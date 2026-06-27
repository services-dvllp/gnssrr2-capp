/*
 * t510_dma_stream.c - Continuous (gap-free) AXI DMA record/replay driver
 * for the ANTSDR T510 RFDC datapath.
 *
 * Unlike the v1 single-buffer driver (one-shot RX captures + single-buffer cyclic
 * TX, both requiring a terminate/restart cycle to move to new data), this
 * driver submits ONE cyclic descriptor chain per direction that loops over
 * a multi-period ring buffer forever. The DMA engine itself never stops
 * between periods -- user space mmaps the rings directly and races the
 * hardware's period pointer:
 *
 *   RX: hardware fills period 0,1,2,...,N-1,0,1,2,... forever. User space
 *       drains each completed period to the SSD before the hardware wraps
 *       back around to overwrite it N periods later.
 *
 *   TX: user space pre-fills the whole ring, then hardware plays period
 *       0,1,2,...,N-1,0,1,2,... forever. User space refills each just-played
 *       period with the next chunk of the replay file before the hardware
 *       wraps back around to play it again N periods later.
 *
 * This binds to the `antsdr,t510-dma-stream` device-tree node with
 * dma-names "tx"/"rx".
 */

#include <linux/atomic.h>
#include <linux/device.h>
#include <linux/dmaengine.h>
#include <linux/dma-mapping.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/mm.h>
#include <linux/miscdevice.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/of.h>
#include <linux/platform_device.h>
#include <linux/sched.h>
#include <linux/slab.h>
#include <linux/uaccess.h>
#include <linux/wait.h>
#include "t510_dma_stream_ioctl.h"

static unsigned int period_bytes = T510_DMA_V2_PERIOD_BYTES;
module_param(period_bytes, uint, 0444);
MODULE_PARM_DESC(period_bytes, "Bytes per DMA period (must be a multiple of PAGE_SIZE)");

static unsigned int num_periods = T510_DMA_V2_NUM_PERIODS;
module_param(num_periods, uint, 0444);
MODULE_PARM_DESC(num_periods, "Number of periods per ring (RX and TX each get their own ring)");

struct t510_dma_v2_dev {
    struct device *dev;
    struct dma_chan *tx_chan;
    struct dma_chan *rx_chan;

    void *rx_buf;
    dma_addr_t rx_dma_addr;
    void *tx_buf;
    dma_addr_t tx_dma_addr;

    size_t ring_bytes;
    u32 period_bytes;
    u32 num_periods;

    struct miscdevice miscdev;
    struct mutex lock;

    atomic64_t rx_hw_periods;
    atomic64_t tx_hw_periods;
    bool rx_running;
    bool tx_running;

    wait_queue_head_t rx_wq;
    wait_queue_head_t tx_wq;
};

static void t510_dma_v2_rx_callback(void *data)
{
    struct t510_dma_v2_dev *tdev = data;

    atomic64_inc(&tdev->rx_hw_periods);
    wake_up_interruptible(&tdev->rx_wq);
}

static void t510_dma_v2_tx_callback(void *data)
{
    struct t510_dma_v2_dev *tdev = data;

    atomic64_inc(&tdev->tx_hw_periods);
    wake_up_interruptible(&tdev->tx_wq);
}

static void t510_dma_v2_release_channels(struct t510_dma_v2_dev *tdev)
{
    if (tdev->tx_chan) {
        dma_release_channel(tdev->tx_chan);
        tdev->tx_chan = NULL;
    }
    if (tdev->rx_chan) {
        dma_release_channel(tdev->rx_chan);
        tdev->rx_chan = NULL;
    }
}

static int t510_dma_v2_request_channels(struct t510_dma_v2_dev *tdev)
{
    struct dma_slave_config tx_cfg = {0};
    struct dma_slave_config rx_cfg = {0};
    int ret;

    tdev->tx_chan = dma_request_chan(tdev->dev, "tx");
    if (IS_ERR(tdev->tx_chan)) {
        ret = PTR_ERR(tdev->tx_chan);
        dev_err(tdev->dev, "failed to request TX DMA channel: %d\n", ret);
        tdev->tx_chan = NULL;
        return ret;
    }

    tdev->rx_chan = dma_request_chan(tdev->dev, "rx");
    if (IS_ERR(tdev->rx_chan)) {
        ret = PTR_ERR(tdev->rx_chan);
        dev_err(tdev->dev, "failed to request RX DMA channel: %d\n", ret);
        dma_release_channel(tdev->tx_chan);
        tdev->tx_chan = NULL;
        return ret;
    }

    tx_cfg.direction = DMA_MEM_TO_DEV;
    tx_cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_32_BYTES;
    ret = dmaengine_slave_config(tdev->tx_chan, &tx_cfg);
    if (ret) {
        dev_err(tdev->dev, "failed to config TX slave: %d\n", ret);
        goto err;
    }

    rx_cfg.direction = DMA_DEV_TO_MEM;
    rx_cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_64_BYTES;
    ret = dmaengine_slave_config(tdev->rx_chan, &rx_cfg);
    if (ret) {
        dev_err(tdev->dev, "failed to config RX slave: %d\n", ret);
        goto err;
    }

    return 0;

err:
    t510_dma_v2_release_channels(tdev);
    return ret;
}

static int t510_dma_v2_start_rx_locked(struct t510_dma_v2_dev *tdev)
{
    struct dma_async_tx_descriptor *desc;
    dma_cookie_t cookie;

    if (tdev->rx_running)
        return 0;

    if (!tdev->rx_chan || !tdev->tx_chan) {
        int ret = t510_dma_v2_request_channels(tdev);
        if (ret)
            return ret;
    }

    memset(tdev->rx_buf, 0, tdev->ring_bytes);
    atomic64_set(&tdev->rx_hw_periods, 0);

    desc = dmaengine_prep_dma_cyclic(tdev->rx_chan, tdev->rx_dma_addr,
                                      tdev->ring_bytes, tdev->period_bytes,
                                      DMA_DEV_TO_MEM,
                                      DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
    if (!desc) {
        dev_err(tdev->dev, "failed to prepare RX cyclic ring\n");
        return -EIO;
    }
    desc->callback = t510_dma_v2_rx_callback;
    desc->callback_param = tdev;

    cookie = dmaengine_submit(desc);
    if (dma_submit_error(cookie)) {
        dev_err(tdev->dev, "failed to submit RX cyclic ring: %d\n", cookie);
        return -EIO;
    }

    dma_async_issue_pending(tdev->rx_chan);
    tdev->rx_running = true;

    dev_info(tdev->dev, "RX streaming started: %u periods x %u bytes (%zu bytes total)\n",
             tdev->num_periods, tdev->period_bytes, tdev->ring_bytes);
    return 0;
}

static int t510_dma_v2_start_tx_locked(struct t510_dma_v2_dev *tdev)
{
    struct dma_async_tx_descriptor *desc;
    dma_cookie_t cookie;

    if (tdev->tx_running)
        return 0;

    if (!tdev->rx_chan || !tdev->tx_chan) {
        int ret = t510_dma_v2_request_channels(tdev);
        if (ret)
            return ret;
    }

    atomic64_set(&tdev->tx_hw_periods, 0);

    desc = dmaengine_prep_dma_cyclic(tdev->tx_chan, tdev->tx_dma_addr,
                                      tdev->ring_bytes, tdev->period_bytes,
                                      DMA_MEM_TO_DEV,
                                      DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
    if (!desc) {
        dev_err(tdev->dev, "failed to prepare TX cyclic ring\n");
        return -EIO;
    }
    desc->callback = t510_dma_v2_tx_callback;
    desc->callback_param = tdev;

    cookie = dmaengine_submit(desc);
    if (dma_submit_error(cookie)) {
        dev_err(tdev->dev, "failed to submit TX cyclic ring: %d\n", cookie);
        return -EIO;
    }

    dma_async_issue_pending(tdev->tx_chan);
    tdev->tx_running = true;

    dev_info(tdev->dev, "TX streaming started: %u periods x %u bytes (%zu bytes total)\n",
             tdev->num_periods, tdev->period_bytes, tdev->ring_bytes);
    return 0;
}

static void t510_dma_v2_stop_rx_locked(struct t510_dma_v2_dev *tdev)
{
    if (!tdev->rx_running)
        return;

    dmaengine_terminate_sync(tdev->rx_chan);
    dmaengine_synchronize(tdev->rx_chan);
    tdev->rx_running = false;
    wake_up_interruptible(&tdev->rx_wq);
}

static void t510_dma_v2_stop_tx_locked(struct t510_dma_v2_dev *tdev)
{
    if (!tdev->tx_running)
        return;

    dmaengine_terminate_sync(tdev->tx_chan);
    dmaengine_synchronize(tdev->tx_chan);
    tdev->tx_running = false;
    wake_up_interruptible(&tdev->tx_wq);
}

static void t510_dma_v2_stop_all_locked(struct t510_dma_v2_dev *tdev)
{
    t510_dma_v2_stop_rx_locked(tdev);
    t510_dma_v2_stop_tx_locked(tdev);

    if (tdev->rx_chan || tdev->tx_chan)
        t510_dma_v2_release_channels(tdev);
}

static int t510_dma_v2_open(struct inode *inode, struct file *file)
{
    struct miscdevice *misc = file->private_data;
    struct t510_dma_v2_dev *tdev = container_of(misc, struct t510_dma_v2_dev, miscdev);

    file->private_data = tdev;
    return 0;
}

static int t510_dma_v2_release(struct inode *inode, struct file *file)
{
    /*
     * Deliberately a no-op: rx_stream and tx_stream open this device
     * independently and may run concurrently (RX capture + TX playback at
     * the same time). Closing one's fd must not terminate the other
     * direction's cyclic DMA ring. Each tool calls STOP_RX/STOP_TX itself
     * before exiting; module unload (t510_dma_v2_remove) stops anything
     * left running.
     */
    (void)inode;
    (void)file;
    return 0;
}

static int t510_dma_v2_mmap(struct file *file, struct vm_area_struct *vma)
{
    struct t510_dma_v2_dev *tdev = file->private_data;
    unsigned long size = vma->vm_end - vma->vm_start;
    unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;

    if (size == 0 || size > tdev->ring_bytes)
        return -EINVAL;

    if (offset == 0)
        return dma_mmap_coherent(tdev->dev, vma, tdev->rx_buf, tdev->rx_dma_addr, tdev->ring_bytes);

    if (offset == tdev->ring_bytes) {
        vma->vm_pgoff = 0;
        return dma_mmap_coherent(tdev->dev, vma, tdev->tx_buf, tdev->tx_dma_addr, tdev->ring_bytes);
    }

    return -EINVAL;
}

static long t510_dma_v2_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
    struct t510_dma_v2_dev *tdev = file->private_data;
    long ret;

    switch (cmd) {
    case T510_DMA_V2_IOC_START_RX:
        mutex_lock(&tdev->lock);
        ret = t510_dma_v2_start_rx_locked(tdev);
        mutex_unlock(&tdev->lock);
        return ret;

    case T510_DMA_V2_IOC_STOP_RX:
        mutex_lock(&tdev->lock);
        t510_dma_v2_stop_rx_locked(tdev);
        if (!tdev->tx_running)
            t510_dma_v2_release_channels(tdev);
        mutex_unlock(&tdev->lock);
        return 0;

    case T510_DMA_V2_IOC_START_TX:
        mutex_lock(&tdev->lock);
        ret = t510_dma_v2_start_tx_locked(tdev);
        mutex_unlock(&tdev->lock);
        return ret;

    case T510_DMA_V2_IOC_STOP_TX:
        mutex_lock(&tdev->lock);
        t510_dma_v2_stop_tx_locked(tdev);
        if (!tdev->rx_running)
            t510_dma_v2_release_channels(tdev);
        mutex_unlock(&tdev->lock);
        return 0;

    case T510_DMA_V2_IOC_GET_STATUS: {
        struct t510_dma_v2_status status;

        status.period_bytes = tdev->period_bytes;
        status.num_periods = tdev->num_periods;
        status.rx_running = tdev->rx_running ? 1U : 0U;
        status.tx_running = tdev->tx_running ? 1U : 0U;
        status.rx_hw_periods = (uint64_t)atomic64_read(&tdev->rx_hw_periods);
        status.tx_hw_periods = (uint64_t)atomic64_read(&tdev->tx_hw_periods);

        if (copy_to_user((void __user *)arg, &status, sizeof(status)))
            return -EFAULT;
        return 0;
    }

    case T510_DMA_V2_IOC_WAIT_RX: {
        uint64_t since;

        if (copy_from_user(&since, (void __user *)arg, sizeof(since)))
            return -EFAULT;

        ret = wait_event_interruptible_timeout(tdev->rx_wq,
                (uint64_t)atomic64_read(&tdev->rx_hw_periods) != since || !tdev->rx_running,
                msecs_to_jiffies(1000));
        if (ret < 0)
            return -EINTR;

        since = (uint64_t)atomic64_read(&tdev->rx_hw_periods);
        if (copy_to_user((void __user *)arg, &since, sizeof(since)))
            return -EFAULT;
        return 0;
    }

    case T510_DMA_V2_IOC_WAIT_TX: {
        uint64_t since;

        if (copy_from_user(&since, (void __user *)arg, sizeof(since)))
            return -EFAULT;

        ret = wait_event_interruptible_timeout(tdev->tx_wq,
                (uint64_t)atomic64_read(&tdev->tx_hw_periods) != since || !tdev->tx_running,
                msecs_to_jiffies(1000));
        if (ret < 0)
            return -EINTR;

        since = (uint64_t)atomic64_read(&tdev->tx_hw_periods);
        if (copy_to_user((void __user *)arg, &since, sizeof(since)))
            return -EFAULT;
        return 0;
    }

    default:
        return -ENOTTY;
    }
}

static const struct file_operations t510_dma_v2_fops = {
    .owner = THIS_MODULE,
    .open = t510_dma_v2_open,
    .release = t510_dma_v2_release,
    .unlocked_ioctl = t510_dma_v2_ioctl,
    .mmap = t510_dma_v2_mmap,
    .llseek = noop_llseek,
};

static int t510_dma_v2_probe(struct platform_device *pdev)
{
    struct t510_dma_v2_dev *tdev;
    int ret;

    if (period_bytes == 0 || (period_bytes % PAGE_SIZE) != 0) {
        dev_err(&pdev->dev, "period_bytes (%u) must be a non-zero multiple of PAGE_SIZE (%lu)\n",
                period_bytes, PAGE_SIZE);
        return -EINVAL;
    }
    if (num_periods == 0) {
        dev_err(&pdev->dev, "num_periods must be non-zero\n");
        return -EINVAL;
    }

    tdev = devm_kzalloc(&pdev->dev, sizeof(*tdev), GFP_KERNEL);
    if (!tdev)
        return -ENOMEM;

    tdev->dev = &pdev->dev;
    mutex_init(&tdev->lock);
    init_waitqueue_head(&tdev->rx_wq);
    init_waitqueue_head(&tdev->tx_wq);
    atomic64_set(&tdev->rx_hw_periods, 0);
    atomic64_set(&tdev->tx_hw_periods, 0);
    tdev->rx_running = false;
    tdev->tx_running = false;
    tdev->period_bytes = period_bytes;
    tdev->num_periods = num_periods;
    tdev->ring_bytes = (size_t)period_bytes * (size_t)num_periods;

    tdev->rx_buf = dmam_alloc_coherent(&pdev->dev, tdev->ring_bytes,
                                        &tdev->rx_dma_addr, GFP_KERNEL);
    if (!tdev->rx_buf) {
        dev_err(&pdev->dev, "failed to allocate %zu-byte RX ring\n", tdev->ring_bytes);
        return -ENOMEM;
    }

    tdev->tx_buf = dmam_alloc_coherent(&pdev->dev, tdev->ring_bytes,
                                        &tdev->tx_dma_addr, GFP_KERNEL);
    if (!tdev->tx_buf) {
        dev_err(&pdev->dev, "failed to allocate %zu-byte TX ring\n", tdev->ring_bytes);
        return -ENOMEM;
    }

    memset(tdev->rx_buf, 0, tdev->ring_bytes);
    memset(tdev->tx_buf, 0, tdev->ring_bytes);

    ret = t510_dma_v2_request_channels(tdev);
    if (ret)
        return ret;

    tdev->miscdev.minor = MISC_DYNAMIC_MINOR;
    tdev->miscdev.name = "t510_dma_stream";
    tdev->miscdev.fops = &t510_dma_v2_fops;
    tdev->miscdev.parent = &pdev->dev;

    ret = misc_register(&tdev->miscdev);
    if (ret) {
        dev_err(&pdev->dev, "failed to register misc device: %d\n", ret);
        t510_dma_v2_release_channels(tdev);
        return ret;
    }

    platform_set_drvdata(pdev, tdev);
    dev_info(&pdev->dev,
             "registered /dev/%s: %u periods x %u bytes per ring (rx dma=%pad tx dma=%pad)\n",
             tdev->miscdev.name, tdev->num_periods, tdev->period_bytes,
             &tdev->rx_dma_addr, &tdev->tx_dma_addr);
    return 0;
}

static int t510_dma_v2_remove(struct platform_device *pdev)
{
    struct t510_dma_v2_dev *tdev = platform_get_drvdata(pdev);

    mutex_lock(&tdev->lock);
    t510_dma_v2_stop_all_locked(tdev);
    mutex_unlock(&tdev->lock);

    misc_deregister(&tdev->miscdev);
    return 0;
}

static const struct of_device_id t510_dma_v2_of_match[] = {
    { .compatible = "antsdr,t510-dma-stream" },
    { }
};
MODULE_DEVICE_TABLE(of, t510_dma_v2_of_match);

static struct platform_driver t510_dma_v2_driver = {
    .probe = t510_dma_v2_probe,
    .remove = t510_dma_v2_remove,
    .driver = {
        .name = "t510_dma_stream",
        .of_match_table = t510_dma_v2_of_match,
    },
};
module_platform_driver(t510_dma_v2_driver);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Susheel");
MODULE_DESCRIPTION("ANTSDR T510 AXI DMA continuous (gap-free) record/replay ring driver");
