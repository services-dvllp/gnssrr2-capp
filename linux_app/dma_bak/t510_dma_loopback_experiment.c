#include <linux/atomic.h>
#include <linux/completion.h>
#include <linux/delay.h>
#include <linux/device.h>
#include <linux/dmaengine.h>
#include <linux/dma-mapping.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/io.h>
#include <linux/kernel.h>
#include <linux/miscdevice.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/of.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/uaccess.h>

#include "t510_dma_ioctl.h"

#define T510_DMA_TIMEOUT_MS      1000U

#define T510_AXI_DMA_BASE        0x80040000UL
#define T510_AXI_DMA_SIZE        0x10000

#define T510_MM2S_DMACR          0x00
#define T510_MM2S_DMASR          0x04
#define T510_S2MM_DMACR          0x30
#define T510_S2MM_DMASR          0x34

struct t510_dma_dev {
	struct device *dev;

	struct dma_chan *tx_chan;
	struct dma_chan *rx_chan;

	void *tx_buf;
	dma_addr_t tx_dma_addr;

	void *rx_buf;
	dma_addr_t rx_dma_addr;

	void __iomem *dma_regs;

	struct miscdevice miscdev;
	struct mutex lock;

	atomic64_t tx_periods;
	atomic64_t rx_periods;

	bool running;

	struct completion tx_done;
	struct completion rx_done;
};

static void t510_dma_dump_regs(struct t510_dma_dev *tdev, const char *tag)
{
	u32 mm2s_cr;
	u32 mm2s_sr;
	u32 s2mm_cr;
	u32 s2mm_sr;

	if (!tdev->dma_regs) {
		dev_warn(tdev->dev, "%s: dma_regs is NULL\n", tag);
		return;
	}

	mm2s_cr = readl(tdev->dma_regs + T510_MM2S_DMACR);
	mm2s_sr = readl(tdev->dma_regs + T510_MM2S_DMASR);
	s2mm_cr = readl(tdev->dma_regs + T510_S2MM_DMACR);
	s2mm_sr = readl(tdev->dma_regs + T510_S2MM_DMASR);

	dev_info(tdev->dev,
		 "%s: MM2S_DMACR=0x%08x MM2S_DMASR=0x%08x S2MM_DMACR=0x%08x S2MM_DMASR=0x%08x\n",
		 tag,
		 mm2s_cr,
		 mm2s_sr,
		 s2mm_cr,
		 s2mm_sr);
}

static void t510_dma_tx_callback(void *data)
{
	struct t510_dma_dev *tdev = data;

	atomic64_inc(&tdev->tx_periods);

	dev_info(tdev->dev, "TX callback fired, tx_periods=%lld\n",
		 atomic64_read(&tdev->tx_periods));

	t510_dma_dump_regs(tdev, "TX_CALLBACK");

	complete(&tdev->tx_done);
}

static void t510_dma_rx_callback(void *data)
{
	struct t510_dma_dev *tdev = data;

	atomic64_inc(&tdev->rx_periods);

	dev_info(tdev->dev, "RX callback fired, rx_periods=%lld\n",
		 atomic64_read(&tdev->rx_periods));

	t510_dma_dump_regs(tdev, "RX_CALLBACK");

	complete(&tdev->rx_done);
}

static int t510_dma_start_locked(struct t510_dma_dev *tdev)
{
	struct dma_async_tx_descriptor *tx_desc;
	struct dma_async_tx_descriptor *rx_desc;
	dma_cookie_t tx_cookie;
	dma_cookie_t rx_cookie;
	unsigned long tx_wait;
	unsigned long rx_wait;
	int ret = 0;

	dev_info(tdev->dev,
		 "START: enter running=%d tx_periods=%lld rx_periods=%lld\n",
		 tdev->running,
		 atomic64_read(&tdev->tx_periods),
		 atomic64_read(&tdev->rx_periods));

	t510_dma_dump_regs(tdev, "START_ENTER");

	if (tdev->running) {
		dev_warn(tdev->dev, "START rejected: DMA already running\n");
		return -EBUSY;
	}

	dev_info(tdev->dev, "START: terminating old TX/RX DMA state\n");

	dmaengine_terminate_sync(tdev->tx_chan);
	dmaengine_terminate_sync(tdev->rx_chan);
	msleep(20);

	t510_dma_dump_regs(tdev, "AFTER_INITIAL_TERMINATE");

	memset(tdev->rx_buf, 0, T510_DMA_BUFFER_BYTES);

	atomic64_set(&tdev->tx_periods, 0);
	atomic64_set(&tdev->rx_periods, 0);

	reinit_completion(&tdev->tx_done);
	reinit_completion(&tdev->rx_done);

	dev_info(tdev->dev,
		 "START: counters reset, tx_dma=%pad rx_dma=%pad len=%zu\n",
		 &tdev->tx_dma_addr,
		 &tdev->rx_dma_addr,
		 (size_t)T510_DMA_BUFFER_BYTES);

	/*
	 * RX first: Device -> Memory.
	 */
	rx_desc = dmaengine_prep_slave_single(tdev->rx_chan,
					      tdev->rx_dma_addr,
					      T510_DMA_BUFFER_BYTES,
					      DMA_DEV_TO_MEM,
					      DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!rx_desc) {
		dev_err(tdev->dev, "failed to prepare RX one-shot DMA\n");
		return -EIO;
	}

	dev_info(tdev->dev, "START: RX desc=%p\n", rx_desc);

	rx_desc->callback = t510_dma_rx_callback;
	rx_desc->callback_param = tdev;

	rx_cookie = dmaengine_submit(rx_desc);
	if (dma_submit_error(rx_cookie)) {
		dev_err(tdev->dev, "failed to submit RX DMA: %d\n", rx_cookie);
		return -EIO;
	}

	dev_info(tdev->dev, "START: RX cookie=%d\n", rx_cookie);

	dma_async_issue_pending(tdev->rx_chan);

	dev_info(tdev->dev, "START: RX issue_pending done\n");

	t510_dma_dump_regs(tdev, "AFTER_RX_ISSUE");

	msleep(20);

	/*
	 * TX second: Memory -> Device.
	 */
	tx_desc = dmaengine_prep_slave_single(tdev->tx_chan,
					      tdev->tx_dma_addr,
					      T510_DMA_BUFFER_BYTES,
					      DMA_MEM_TO_DEV,
					      DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!tx_desc) {
		dev_err(tdev->dev, "failed to prepare TX one-shot DMA\n");
		dmaengine_terminate_sync(tdev->rx_chan);
		return -EIO;
	}

	dev_info(tdev->dev, "START: TX desc=%p\n", tx_desc);

	tx_desc->callback = t510_dma_tx_callback;
	tx_desc->callback_param = tdev;

	tx_cookie = dmaengine_submit(tx_desc);
	if (dma_submit_error(tx_cookie)) {
		dev_err(tdev->dev, "failed to submit TX DMA: %d\n", tx_cookie);
		dmaengine_terminate_sync(tdev->rx_chan);
		return -EIO;
	}

	dev_info(tdev->dev, "START: TX cookie=%d\n", tx_cookie);

	print_hex_dump(KERN_INFO, "TXBUF: ",
		       DUMP_PREFIX_OFFSET,
		       16,
		       2,
		       tdev->tx_buf,
		       64,
		       false);

	tdev->running = true;

	dma_async_issue_pending(tdev->tx_chan);

	dev_info(tdev->dev, "START: TX issue_pending done\n");

	t510_dma_dump_regs(tdev, "AFTER_TX_ISSUE");

	dev_info(tdev->dev, "one-shot DMA started: %zu-byte buffer\n",
		 (size_t)T510_DMA_BUFFER_BYTES);

	tx_wait = wait_for_completion_timeout(&tdev->tx_done,
					      msecs_to_jiffies(T510_DMA_TIMEOUT_MS));

	if (!tx_wait) {
		dev_warn(tdev->dev,
			 "TX one-shot timeout after %u ms, tx_periods=%lld rx_periods=%lld\n",
			 T510_DMA_TIMEOUT_MS,
			 atomic64_read(&tdev->tx_periods),
			 atomic64_read(&tdev->rx_periods));

		t510_dma_dump_regs(tdev, "TX_TIMEOUT_BEFORE_TERMINATE");

		ret = -ETIMEDOUT;
	}

	rx_wait = wait_for_completion_timeout(&tdev->rx_done,
					      msecs_to_jiffies(T510_DMA_TIMEOUT_MS));

	if (!rx_wait) {
		dev_warn(tdev->dev,
			 "RX one-shot timeout after %u ms, tx_periods=%lld rx_periods=%lld\n",
			 T510_DMA_TIMEOUT_MS,
			 atomic64_read(&tdev->tx_periods),
			 atomic64_read(&tdev->rx_periods));

		t510_dma_dump_regs(tdev, "RX_TIMEOUT_BEFORE_TERMINATE");

		ret = -ETIMEDOUT;
	}

	if (ret) {
		dev_warn(tdev->dev, "START: timeout/error, terminating TX/RX DMA\n");

		t510_dma_dump_regs(tdev, "BEFORE_TERMINATE_ON_TIMEOUT");

		dmaengine_terminate_sync(tdev->tx_chan);
		dmaengine_terminate_sync(tdev->rx_chan);
		msleep(20);

		t510_dma_dump_regs(tdev, "AFTER_TERMINATE_ON_TIMEOUT");
	} else {
		dev_info(tdev->dev,
			 "START: one-shot complete, tx_periods=%lld rx_periods=%lld\n",
			 atomic64_read(&tdev->tx_periods),
			 atomic64_read(&tdev->rx_periods));

		t510_dma_dump_regs(tdev, "START_COMPLETE");
	}

	tdev->running = false;

	dev_info(tdev->dev,
		 "START: exit ret=%d running=%d tx_periods=%lld rx_periods=%lld\n",
		 ret,
		 tdev->running,
		 atomic64_read(&tdev->tx_periods),
		 atomic64_read(&tdev->rx_periods));

	return ret;
}

static void t510_dma_stop_locked(struct t510_dma_dev *tdev)
{
	dev_info(tdev->dev,
		 "STOP: enter running=%d tx_periods=%lld rx_periods=%lld\n",
		 tdev->running,
		 atomic64_read(&tdev->tx_periods),
		 atomic64_read(&tdev->rx_periods));

	t510_dma_dump_regs(tdev, "STOP_ENTER");

	dmaengine_terminate_sync(tdev->tx_chan);
	dmaengine_terminate_sync(tdev->rx_chan);
	msleep(20);

	tdev->running = false;

	t510_dma_dump_regs(tdev, "STOP_EXIT");

	dev_info(tdev->dev,
		 "STOP: exit running=%d tx_periods=%lld rx_periods=%lld\n",
		 tdev->running,
		 atomic64_read(&tdev->tx_periods),
		 atomic64_read(&tdev->rx_periods));
}

static int t510_dma_open(struct inode *inode, struct file *file)
{
	struct miscdevice *misc = file->private_data;
	struct t510_dma_dev *tdev = container_of(misc,
						 struct t510_dma_dev,
						 miscdev);

	file->private_data = tdev;
	return 0;
}

static ssize_t t510_dma_read(struct file *file, char __user *buf,
			     size_t count, loff_t *ppos)
{
	struct t510_dma_dev *tdev = file->private_data;
	size_t remaining;
	size_t to_copy;

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
		dev_warn(tdev->dev, "WRITE rejected: DMA already running\n");
		ret = -EBUSY;
		goto out_unlock;
	}

	to_copy = min(count, (size_t)T510_DMA_BUFFER_BYTES);

	dev_info(tdev->dev,
		 "WRITE: CPU virtual addr=%p DMA physical addr=%pad count=%zu to_copy=%zu\n",
		 tdev->tx_buf,
		 &tdev->tx_dma_addr,
		 count,
		 to_copy);

	memset(tdev->tx_buf, 0, T510_DMA_BUFFER_BYTES);

	if (copy_from_user(tdev->tx_buf, buf, to_copy)) {
		ret = -EFAULT;
		goto out_unlock;
	}

	verify_ptr = (int16_t *)tdev->tx_buf;

	dev_info(tdev->dev,
		 "WRITE: TX readback first 4 int16 samples: [%d, %d, %d, %d]\n",
		 (int)*(verify_ptr),
		 (int)*(verify_ptr + 1),
		 (int)*(verify_ptr + 2),
		 (int)*(verify_ptr + 3));

	print_hex_dump(KERN_INFO, "WRITE_TXBUF: ",
		       DUMP_PREFIX_OFFSET,
		       16,
		       2,
		       tdev->tx_buf,
		       64,
		       false);

	ret = (int)to_copy;

out_unlock:
	mutex_unlock(&tdev->lock);
	return ret;
}

static long t510_dma_ioctl(struct file *file, unsigned int cmd,
			   unsigned long arg)
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

		if (copy_to_user((void __user *)arg,
				 &status,
				 sizeof(status)))
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
	struct dma_slave_config tx_cfg = {0};
	struct dma_slave_config rx_cfg = {0};
	int ret;

	tdev = devm_kzalloc(&pdev->dev, sizeof(*tdev), GFP_KERNEL);
	if (!tdev)
		return -ENOMEM;

	tdev->dev = &pdev->dev;

	tdev->dma_regs = devm_ioremap(&pdev->dev,
				      T510_AXI_DMA_BASE,
				      T510_AXI_DMA_SIZE);
	if (!tdev->dma_regs) {
		dev_err(&pdev->dev, "failed to ioremap AXI DMA registers\n");
		return -ENOMEM;
	}

	mutex_init(&tdev->lock);

	atomic64_set(&tdev->tx_periods, 0);
	atomic64_set(&tdev->rx_periods, 0);

	init_completion(&tdev->tx_done);
	init_completion(&tdev->rx_done);

	tdev->running = false;

	tdev->tx_chan = dma_request_chan(&pdev->dev, "tx");
	if (IS_ERR(tdev->tx_chan)) {
		ret = PTR_ERR(tdev->tx_chan);
		dev_err(&pdev->dev,
			"failed to request TX DMA channel: %d\n",
			ret);
		return ret;
	}

	tdev->rx_chan = dma_request_chan(&pdev->dev, "rx");
	if (IS_ERR(tdev->rx_chan)) {
		ret = PTR_ERR(tdev->rx_chan);
		dev_err(&pdev->dev,
			"failed to request RX DMA channel: %d\n",
			ret);
		dma_release_channel(tdev->tx_chan);
		return ret;
	}

	/*
	 * TX: Memory -> Device.
	 */
	tx_cfg.direction = DMA_MEM_TO_DEV;
	tx_cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_32_BYTES;

	ret = dmaengine_slave_config(tdev->tx_chan, &tx_cfg);
	if (ret) {
		dev_err(&pdev->dev, "failed TX slave config: %d\n", ret);
		goto err_release_channels;
	}

	/*
	 * RX: Device -> Memory.
	 */
	rx_cfg.direction = DMA_DEV_TO_MEM;
	rx_cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_64_BYTES;

	ret = dmaengine_slave_config(tdev->rx_chan, &rx_cfg);
	if (ret) {
		dev_err(&pdev->dev, "failed RX slave config: %d\n", ret);
		goto err_release_channels;
	}

	tdev->tx_buf = dmam_alloc_coherent(&pdev->dev,
					   T510_DMA_BUFFER_BYTES,
					   &tdev->tx_dma_addr,
					   GFP_KERNEL);
	if (!tdev->tx_buf) {
		ret = -ENOMEM;
		goto err_release_channels;
	}

	tdev->rx_buf = dmam_alloc_coherent(&pdev->dev,
					   T510_DMA_BUFFER_BYTES,
					   &tdev->rx_dma_addr,
					   GFP_KERNEL);
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
		dev_err(&pdev->dev,
			"failed to register misc device: %d\n",
			ret);
		goto err_release_channels;
	}

	platform_set_drvdata(pdev, tdev);

	dev_info(&pdev->dev,
		 "registered /dev/%s, tx dma=%pad rx dma=%pad\n",
		 tdev->miscdev.name,
		 &tdev->tx_dma_addr,
		 &tdev->rx_dma_addr);

	t510_dma_dump_regs(tdev, "PROBE");

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
MODULE_DESCRIPTION("ANTSDR T510 AXI DMA one-shot loopback helper");