#include <linux/atomic.h>
#include <linux/device.h>
#include <linux/dmaengine.h>
#include <linux/dma-mapping.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/miscdevice.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/of.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/uaccess.h>
#include <linux/delay.h>
#include "t510_dma_ioctl.h"

struct t510_dma_dev {
	struct device *dev;
	struct dma_chan *tx_chan;
	struct dma_chan *rx_chan;
	void *tx_buf;
	dma_addr_t tx_dma_addr;
	void *rx_buf;
	dma_addr_t rx_dma_addr;
	struct miscdevice miscdev;
	struct mutex lock;
	atomic64_t tx_periods;
	atomic64_t rx_periods;
	bool running;
};

static void t510_dma_tx_callback(void *data)
{
	struct t510_dma_dev *tdev = data;

	atomic64_inc(&tdev->tx_periods);
}

static void t510_dma_rx_callback(void *data)
{
	struct t510_dma_dev *tdev = data;

	atomic64_inc(&tdev->rx_periods);
}

static int t510_dma_start_locked(struct t510_dma_dev *tdev)
{
	struct dma_async_tx_descriptor *tx_desc;
	struct dma_async_tx_descriptor *rx_desc;
	dma_cookie_t tx_cookie;
	dma_cookie_t rx_cookie;

	if (tdev->running)
		return 0;

	memset(tdev->rx_buf, 0, T510_DMA_BUFFER_BYTES);
	atomic64_set(&tdev->tx_periods, 0);
	atomic64_set(&tdev->rx_periods, 0);
	
	/*if (tdev->rx_chan)
		dmaengine_terminate_sync(tdev->rx_chan);*/
	msleep(20);
	rx_desc = dmaengine_prep_dma_cyclic(tdev->rx_chan,
					    tdev->rx_dma_addr,
					    T510_DMA_BUFFER_BYTES,
					    T510_DMA_PERIOD_BYTES,
					    DMA_DEV_TO_MEM,
					    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!rx_desc) {
		dev_err(tdev->dev, "failed to prepare RX cyclic DMA\n");
		return -EIO;
	}
	rx_desc->callback = t510_dma_rx_callback;
	rx_desc->callback_param = tdev;

	rx_cookie = dmaengine_submit(rx_desc);
	if (dma_submit_error(rx_cookie)) {
		dev_err(tdev->dev, "failed to submit RX DMA: %d\n", rx_cookie);
		return -EIO;
	}
	
	/*if (tdev->tx_chan)
		dmaengine_terminate_sync(tdev->tx_chan);*/
	msleep(20);
	tx_desc = dmaengine_prep_dma_cyclic(tdev->tx_chan,
					    tdev->tx_dma_addr,
					    T510_DMA_BUFFER_BYTES,
					    T510_DMA_PERIOD_BYTES,
					    DMA_MEM_TO_DEV,
					    DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!tx_desc) {
		dev_err(tdev->dev, "failed to prepare TX cyclic DMA\n");
		dmaengine_terminate_sync(tdev->rx_chan);
		return -EIO;
	}
	tx_desc->callback = t510_dma_tx_callback;
	tx_desc->callback_param = tdev;

	tx_cookie = dmaengine_submit(tx_desc);
	if (dma_submit_error(tx_cookie)) {
		dev_err(tdev->dev, "failed to submit TX DMA: %d\n", tx_cookie);
		dmaengine_terminate_sync(tdev->rx_chan);
		return -EIO;
	}
	print_hex_dump(KERN_INFO, "TXBUF: ",
				   DUMP_PREFIX_OFFSET,
				   16, 2,
				   tdev->tx_buf,
				   64,
				   false);
	dma_async_issue_pending(tdev->rx_chan);
	dma_async_issue_pending(tdev->tx_chan);
	tdev->running = true;

	dev_info(tdev->dev, "cyclic DMA started: %zu-byte buffer, %zu-byte period\n",
		 T510_DMA_BUFFER_BYTES, T510_DMA_PERIOD_BYTES);

	return 0;
}

static void t510_dma_stop_locked(struct t510_dma_dev *tdev)
{
	if (!tdev->running)
		return;

	dmaengine_terminate_sync(tdev->tx_chan);
	dmaengine_terminate_sync(tdev->rx_chan);
	msleep(20);
	tdev->running = false;
}

static int t510_dma_open(struct inode *inode, struct file *file)
{
	struct miscdevice *misc = file->private_data;
	struct t510_dma_dev *tdev = container_of(misc, struct t510_dma_dev, miscdev);

	file->private_data = tdev;
	return 0;
}

static ssize_t t510_dma_read(struct file *file, char __user *buf,
			     size_t count, loff_t *ppos)
{
	struct t510_dma_dev *tdev = file->private_data;
	size_t remaining;
	size_t to_copy;

	/* This tells the CPU its cache is invalid and it must fetch fresh data from RAM */
	//dma_sync_single_for_cpu(tdev->dev, tdev->rx_dma_addr, 
    //                        T510_DMA_BUFFER_BYTES, DMA_FROM_DEVICE);
							
	if (*ppos >= T510_DMA_BUFFER_BYTES)
		return 0;

	remaining = T510_DMA_BUFFER_BYTES - (size_t)*ppos;
	to_copy = min(count, remaining);
	if (copy_to_user(buf, tdev->rx_buf + *ppos, to_copy))
		return -EFAULT;

	*ppos += to_copy;
	return to_copy;
}

static ssize_t t510_dma_write(struct file *file, const char __user *buf,
			      size_t count, loff_t *ppos)
{
	struct t510_dma_dev *tdev = file->private_data;
	size_t to_copy;
	int ret = 0;
	int16_t *verify_ptr;
	mutex_lock(&tdev->lock);
	if (tdev->running) {
		ret = -EBUSY;
		goto out_unlock;
	}

	to_copy = min(count, (size_t)T510_DMA_BUFFER_BYTES);
	// Debug Print 1: The Pointers
    // %p is the Virtual Address (CPU side), %pad is the Physical Address (DMA side)
    pr_info("T510_DEBUG: CPU Virtual Addr: %p | DMA Physical Addr: %pad\n", 
            tdev->tx_buf, &tdev->tx_dma_addr);
	
	memset(tdev->tx_buf, 0, T510_DMA_BUFFER_BYTES);
	if (copy_from_user(tdev->tx_buf, buf, to_copy)) {
		ret = -EFAULT;
		goto out_unlock;
	}
	
	verify_ptr = (int16_t *)tdev->tx_buf;
	pr_info("T510_VFY: PhysAddr=%pad | VirtAddr=%p\n", &tdev->tx_dma_addr, tdev->tx_buf);
    pr_info("T510_VFY: Readback from Virt: [%d, %d, %d, %d]\n", 
            (int)*(verify_ptr), (int)*(verify_ptr+1), (int)*(verify_ptr+2), (int)*(verify_ptr+3));
			
	/* This forces the CPU to flush the TX buffer cache to the DDR RAM */
    //dma_sync_single_for_device(tdev->dev, tdev->tx_dma_addr, 
    //                           T510_DMA_BUFFER_BYTES, DMA_TO_DEVICE);
	ret = (int)to_copy;

out_unlock:
	mutex_unlock(&tdev->lock);
	return ret;
}

static long t510_dma_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct t510_dma_dev *tdev = file->private_data;
	struct t510_dma_status status;
	long ret = 0;

	switch (cmd) {
	case T510_DMA_IOC_START:
		mutex_lock(&tdev->lock);
		ret = t510_dma_start_locked(tdev);
		mutex_unlock(&tdev->lock);
		return ret;

	case T510_DMA_IOC_STOP:
		mutex_lock(&tdev->lock);
		t510_dma_stop_locked(tdev);
		mutex_unlock(&tdev->lock);
		return 0;

	case T510_DMA_IOC_STATUS:
		status.running = tdev->running ? 1U : 0U;
		status.buffer_bytes = T510_DMA_BUFFER_BYTES;
		status.period_bytes = T510_DMA_PERIOD_BYTES;
		status.tx_periods = atomic64_read(&tdev->tx_periods);
		status.rx_periods = atomic64_read(&tdev->rx_periods);
		if (copy_to_user((void __user *)arg, &status, sizeof(status)))
			return -EFAULT;
		return 0;

	default:
		return -ENOTTY;
	}
}

static int t510_dma_release(struct inode *inode, struct file *file)
{
	return 0;
}

static const struct file_operations t510_dma_fops = {
	.owner = THIS_MODULE,
	.open = t510_dma_open,
	.release = t510_dma_release,
	.read = t510_dma_read,
	.write = t510_dma_write,
	.unlocked_ioctl = t510_dma_ioctl,
	.llseek = default_llseek,
};

static int t510_dma_probe(struct platform_device *pdev)
{
	struct t510_dma_dev *tdev;
	int ret;

	tdev = devm_kzalloc(&pdev->dev, sizeof(*tdev), GFP_KERNEL);
	if (!tdev)
		return -ENOMEM;

	tdev->dev = &pdev->dev;
	mutex_init(&tdev->lock);
	atomic64_set(&tdev->tx_periods, 0);
	atomic64_set(&tdev->rx_periods, 0);

	tdev->tx_chan = dma_request_chan(&pdev->dev, "tx");
	if (IS_ERR(tdev->tx_chan)) {
		ret = PTR_ERR(tdev->tx_chan);
		dev_err(&pdev->dev, "failed to request TX DMA channel: %d\n", ret);
		return ret;
	}

	tdev->rx_chan = dma_request_chan(&pdev->dev, "rx");
	if (IS_ERR(tdev->rx_chan)) {
		ret = PTR_ERR(tdev->rx_chan);
		dev_err(&pdev->dev, "failed to request RX DMA channel: %d\n", ret);
		dma_release_channel(tdev->tx_chan);
		return ret;
	}
    struct dma_slave_config tx_cfg = {0};
	struct dma_slave_config rx_cfg = {0};

	/* TX: Memory -> Device */
	tx_cfg.direction = DMA_MEM_TO_DEV;
	tx_cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_32_BYTES;

	ret = dmaengine_slave_config(tdev->tx_chan, &tx_cfg);
	if (ret) {
		dev_err(&pdev->dev, "failed TX slave config: %d\n", ret);
		goto err_release_channels;
	}

	/* RX: Device -> Memory */
	rx_cfg.direction = DMA_DEV_TO_MEM;
	rx_cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_64_BYTES;

	ret = dmaengine_slave_config(tdev->rx_chan, &rx_cfg);
	if (ret) {
		dev_err(&pdev->dev, "failed RX slave config: %d\n", ret);
		goto err_release_channels;
	}
	tdev->tx_buf = dmam_alloc_coherent(&pdev->dev, T510_DMA_BUFFER_BYTES,
					   &tdev->tx_dma_addr, GFP_KERNEL);
	if (!tdev->tx_buf) {
		ret = -ENOMEM;
		goto err_release_channels;
	}

	tdev->rx_buf = dmam_alloc_coherent(&pdev->dev, T510_DMA_BUFFER_BYTES,
					   &tdev->rx_dma_addr, GFP_KERNEL);
	if (!tdev->rx_buf) {
		ret = -ENOMEM;
		goto err_release_channels;
	}

	memset(tdev->tx_buf, 0, T510_DMA_BUFFER_BYTES);
	memset(tdev->rx_buf, 0, T510_DMA_BUFFER_BYTES);

	tdev->miscdev.minor = MISC_DYNAMIC_MINOR;
	tdev->miscdev.name = "t510_dma_loopback";
	tdev->miscdev.fops = &t510_dma_fops;
	tdev->miscdev.parent = &pdev->dev;

	ret = misc_register(&tdev->miscdev);
	if (ret) {
		dev_err(&pdev->dev, "failed to register misc device: %d\n", ret);
		goto err_release_channels;
	}

	platform_set_drvdata(pdev, tdev);

	dev_info(&pdev->dev,
		 "registered /dev/%s, tx dma=%pad rx dma=%pad\n",
		 tdev->miscdev.name,
		 &tdev->tx_dma_addr,
		 &tdev->rx_dma_addr);
	return 0;

err_release_channels:
	dma_release_channel(tdev->rx_chan);
	dma_release_channel(tdev->tx_chan);
	return ret;
}

static int t510_dma_remove(struct platform_device *pdev)
{
	struct t510_dma_dev *tdev = platform_get_drvdata(pdev);

	mutex_lock(&tdev->lock);
	t510_dma_stop_locked(tdev);
	mutex_unlock(&tdev->lock);

	misc_deregister(&tdev->miscdev);
	dma_release_channel(tdev->rx_chan);
	dma_release_channel(tdev->tx_chan);

	return 0;
}

static const struct of_device_id t510_dma_of_match[] = {
	{ .compatible = "antsdr,t510-dma-loopback" },
	{ }
};
MODULE_DEVICE_TABLE(of, t510_dma_of_match);

static struct platform_driver t510_dma_driver = {
	.probe = t510_dma_probe,
	.remove = t510_dma_remove,
	.driver = {
		.name = "t510_dma_loopback",
		.of_match_table = t510_dma_of_match,
	},
};

module_platform_driver(t510_dma_driver);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("OpenAI");
MODULE_DESCRIPTION("ANTSDR T510 AXI DMA cyclic loopback helper");
