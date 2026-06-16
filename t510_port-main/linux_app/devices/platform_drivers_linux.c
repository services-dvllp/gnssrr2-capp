/*
 * platform_drivers_linux.c
 *
 * Linux userspace replacement for the Vitis standalone platform_drivers.c.
 *
 * Vitis → Linux replacements implemented here:
 *   XSpiPs (polled SPI transfer)  →  /dev/spidev via SPI_IOC_MESSAGE ioctl
 *   XGpioPs (GPIO read/write)     →  /sys/class/gpio sysfs interface
 *   XIicPs (I2C)                  →  Not called in the RF-init flow; stubs only
 *   usleep()                      →  POSIX usleep() (unchanged)
 *
 * See devices/parameters.h for device path and GPIO base configuration.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <dirent.h>
#include <sys/ioctl.h>
#include <linux/spi/spidev.h>
#include "platform_drivers.h"
#include "parameters.h"

/* ==========================================================================
 * Global SPI device instance for LMK04828 (same as original standalone code)
 * ==========================================================================
 *   SPI_BASEADDR  = XPAR_PSU_SPI_1_BASEADDR = 0xFF050000 (SPI1, kept for ref)
 *   SPI_DEVICE_ID = XPAR_XSPIPS_0_DEVICE_ID = 0          (SPI1, kept for ref)
 *   chip_select   = 1
 *   cpha = 0, cpol = 0  → SPI Mode 0
 */
spi_device lmk04828_spi = {
    .base_address = 0xFF050000U,  /* XPAR_PSU_SPI_1_BASEADDR (reference only) */
    .device_id    = 0,            /* XPAR_XSPIPS_0_DEVICE_ID (reference only) */
    .chip_select  = 1,
    .cpha         = 0,
    .cpol         = 0,
    .id_no        = 0,
};

/* ==========================================================================
 * Internal state
 * ========================================================================== */
static int spi_fd = -1;   /* fd for /dev/spidev<BUS>.<CS> */

/* Resolved at runtime by detect_gpio_chip_base(); falls back to the
 * compile-time GPIO_CHIP_BASE in parameters.h if detection fails. */
static int gpio_chip_base = GPIO_CHIP_BASE;

/* ==========================================================================
 * detect_gpio_chip_base
 *
 * Walk /sys/class/gpio/gpiochip* and find the one whose label is
 * "zynqmp_gpio" (the PS GPIO controller @0xff0a0000 – the one that owns
 * MIO[29], MIO[33], MIO[34] and the EMIO lines used for LMK_*).
 * The base value is kernel-assigned and varies between kernel versions
 * and between boards (e.g. 338 on some older PetaLinux builds, but a
 * different number on the 2024.2 kernel).
 *
 * NOTE: this board's device tree also instantiates "zynqmp-gpio-modepin"
 * under /firmware; we must NOT use that chip's base.
 * ========================================================================== */
static int detect_gpio_chip_base(void)
{
    DIR *d = opendir("/sys/class/gpio");
    if (!d) {
        fprintf(stderr, "detect_gpio_chip_base: opendir /sys/class/gpio failed: %s\n",
                strerror(errno));
        return -1;
    }

    struct dirent *ent;
    int found_base = -1;
    while ((ent = readdir(d)) != NULL) {
        if (strncmp(ent->d_name, "gpiochip", 8) != 0) continue;

        char path[128];
        char label[64] = {0};
        int  fd;

        snprintf(path, sizeof(path), "/sys/class/gpio/%s/label", ent->d_name);
        fd = open(path, O_RDONLY);
        if (fd < 0) continue;
        int n = read(fd, label, sizeof(label) - 1);
        close(fd);
        if (n <= 0) continue;
        /* strip trailing newline */
        if (label[n - 1] == '\n') label[n - 1] = '\0';

        if (strcmp(label, "zynqmp_gpio") != 0) continue;

        snprintf(path, sizeof(path), "/sys/class/gpio/%s/base", ent->d_name);
        fd = open(path, O_RDONLY);
        if (fd < 0) continue;
        char buf[16] = {0};
        n = read(fd, buf, sizeof(buf) - 1);
        close(fd);
        if (n <= 0) continue;

        found_base = (int)strtol(buf, NULL, 10);
        break;
    }
    closedir(d);
    return found_base;
}

/* ==========================================================================
 * Helpers: Linux sysfs GPIO
 *
 * gpio_linux_num(gpio) converts a standalone pin number to the Linux GPIO
 * number: linux_num = gpio_chip_base + standalone_pin
 * ========================================================================== */
static int gpio_linux_num(uint8_t gpio_standalone)
{
    return gpio_chip_base + (int)gpio_standalone;
}

static int gpio_export(int linux_gpio)
{
    char path[64];
    int  fd;

    /* If the gpio is already exported (sysfs entry exists), skip */
    snprintf(path, sizeof(path), "/sys/class/gpio/gpio%d/value", linux_gpio);
    if (access(path, F_OK) == 0)
        return 0;

    fd = open("/sys/class/gpio/export", O_WRONLY);
    if (fd < 0) {
        fprintf(stderr, "gpio_export: open /sys/class/gpio/export failed: %s\n",
                strerror(errno));
        return -1;
    }
    char num[16];
    int len = snprintf(num, sizeof(num), "%d", linux_gpio);
    if (write(fd, num, (size_t)len) < 0) {
        /* EBUSY means already exported */
        if (errno != EBUSY) {
            fprintf(stderr, "gpio_export: write failed for gpio%d: %s\n",
                    linux_gpio, strerror(errno));
            close(fd);
            return -1;
        }
    }
    close(fd);
    usleep(10000); /* 10 ms – wait for sysfs entries to appear */
    return 0;
}

static int gpio_set_direction(int linux_gpio, const char *dir)
{
    char path[64];
    int  fd;

    snprintf(path, sizeof(path), "/sys/class/gpio/gpio%d/direction", linux_gpio);
    fd = open(path, O_WRONLY);
    if (fd < 0) {
        fprintf(stderr, "gpio_set_direction: open %s failed: %s\n",
                path, strerror(errno));
        return -1;
    }
    if (write(fd, dir, strlen(dir)) < 0) {
        fprintf(stderr, "gpio_set_direction: write failed: %s\n", strerror(errno));
        close(fd);
        return -1;
    }
    close(fd);
    return 0;
}

static int gpio_write_value(int linux_gpio, int value)
{
    char path[64];
    int  fd;

    snprintf(path, sizeof(path), "/sys/class/gpio/gpio%d/value", linux_gpio);
    fd = open(path, O_WRONLY);
    if (fd < 0) {
        fprintf(stderr, "gpio_write_value: open %s failed: %s\n",
                path, strerror(errno));
        return -1;
    }
    const char *v = value ? "1" : "0";
    if (write(fd, v, 1) < 0) {
        fprintf(stderr, "gpio_write_value: write failed: %s\n", strerror(errno));
        close(fd);
        return -1;
    }
    close(fd);
    return 0;
}

/* ==========================================================================
 * platform_init
 * Mirrors the original: initialise GPIO pins then open the SPI device.
 * ========================================================================== */
int32_t platform_init(void)
{
    int rc;

    /* --- Resolve the zynqmp_gpio gpiochip base at runtime ---
     * The compile-time GPIO_CHIP_BASE is only a fallback.  The real base
     * is kernel-assigned and varies between PetaLinux versions. */
    int detected_base = detect_gpio_chip_base();
    if (detected_base >= 0) {
        gpio_chip_base = detected_base;
        printf("platform_init: zynqmp_gpio base detected at %d "
               "(pin 29 -> gpio%d, pin 78 -> gpio%d)\n",
               gpio_chip_base, gpio_chip_base + 29, gpio_chip_base + 78);
    } else {
        fprintf(stderr,
                "platform_init: could not auto-detect zynqmp_gpio base, "
                "falling back to compile-time %d "
                "(edit GPIO_CHIP_BASE in parameters.h if this is wrong)\n",
                GPIO_CHIP_BASE);
    }

    /* --- GPIO initialisation ---
     * Original platform_init() calls:
     *   gpio_init(GPIO_DEVICE_ID)
     *   gpio_direction_output(LMK_REF_SELECT0, 0)   TCXO reference
     *   gpio_direction_output(LMK_REF_SELECT1, 1)
     *   gpio_direction_output(LMK_SYNC, 0)
     *   gpio_direction_output(LMK_RESET, 1)
     */
    rc = gpio_init(0 /* device_id unused in Linux */);
    if (rc != 0) return rc;

    rc  = gpio_direction_output(LMK_REF_SELECT0, 0);
    rc |= gpio_direction_output(LMK_REF_SELECT1, 1);
    rc |= gpio_direction_output(LMK_SYNC,        0);
    rc |= gpio_direction_output(LMK_RESET,       1);
    if (rc != 0) {
        fprintf(stderr, "platform_init: GPIO direction setup failed\n");
        return -1;
    }

    /* --- SPI initialisation ---
     * Open /dev/spidev<BUS>.<CS>.  The device path is defined in parameters.h.
     * Mode = 0 (CPOL=0, CPHA=0) — matches lmk04828_spi.cpol=0 .cpha=0.
     * Bits per word = 8.
     * Speed: SPI_SPEED_HZ (~3.125 MHz), matching the XSPIPS_CLK_PRESCALE_64
     * applied to the 199998001 Hz SPI1 input clock.
     */
    spi_fd = open(SPI_DEVICE_PATH, O_RDWR);
    if (spi_fd < 0) {
        fprintf(stderr, "platform_init: open(%s) failed: %s\n",
                SPI_DEVICE_PATH, strerror(errno));
        return -1;
    }

    uint8_t  mode  = SPI_MODE_0;
    uint8_t  bits  = 8;
    uint32_t speed = SPI_SPEED_HZ;

    if (ioctl(spi_fd, SPI_IOC_WR_MODE, &mode) < 0) {
        fprintf(stderr, "platform_init: SPI_IOC_WR_MODE failed: %s\n", strerror(errno));
        close(spi_fd); spi_fd = -1; return -1;
    }
    if (ioctl(spi_fd, SPI_IOC_WR_BITS_PER_WORD, &bits) < 0) {
        fprintf(stderr, "platform_init: SPI_IOC_WR_BITS_PER_WORD failed: %s\n", strerror(errno));
        close(spi_fd); spi_fd = -1; return -1;
    }
    if (ioctl(spi_fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed) < 0) {
        fprintf(stderr, "platform_init: SPI_IOC_WR_MAX_SPEED_HZ failed: %s\n", strerror(errno));
        close(spi_fd); spi_fd = -1; return -1;
    }

    printf("platform_init: SPI %s opened (mode=0, bits=8, speed=%u Hz)\n",
           SPI_DEVICE_PATH, SPI_SPEED_HZ);
    return 0;
}

/* ==========================================================================
 * spi_write_and_read
 *
 * Original standalone implementation uses XSpiPs_PolledTransfer which does a
 * full-duplex transfer: sends 'bytes_number' bytes from 'data' and reads the
 * response back into the same buffer.
 *
 * Linux: uses SPI_IOC_MESSAGE(1) for a single full-duplex transfer.
 * The chip-select is managed by the kernel spidev driver.
 * ========================================================================== */
int32_t spi_write_and_read(spi_device *dev,
                           uint8_t *data,
                           uint8_t bytes_number)
{
    (void)dev; /* dev->chip_select is baked into the spidev device path */

    if (spi_fd < 0) {
        fprintf(stderr, "spi_write_and_read: SPI device not open\n");
        return -1;
    }

    struct spi_ioc_transfer xfer = {
        .tx_buf        = (unsigned long)data,
        .rx_buf        = (unsigned long)data,
        .len           = bytes_number,
        .speed_hz      = SPI_SPEED_HZ,
        .bits_per_word = 8,
        .cs_change     = 0,
        .delay_usecs   = 0,
    };

    int ret = ioctl(spi_fd, SPI_IOC_MESSAGE(1), &xfer);
    if (ret < 0) {
        fprintf(stderr, "spi_write_and_read: ioctl SPI_IOC_MESSAGE failed: %s\n",
                strerror(errno));
        return -1;
    }
    return 0;
}

/* ==========================================================================
 * GPIO API
 * ========================================================================== */
int32_t gpio_init(uint16_t device_id)
{
    (void)device_id; /* Not needed in Linux; device is accessed via sysfs */
    return 0;
}

/*
 * gpio_direction_output - configure pin as output and set initial value.
 * Original: XGpioPs_SetDirectionPin + XGpioPs_SetOutputEnablePin + XGpioPs_WritePin
 */
int32_t gpio_direction_output(uint8_t gpio, uint8_t value)
{
    int linux_gpio = gpio_linux_num(gpio);
    int rc;

    rc = gpio_export(linux_gpio);
    if (rc) return rc;

    /* Set direction to "out" with the initial value embedded in the
     * direction write ("high" or "low") to avoid a glitch. */
    rc = gpio_set_direction(linux_gpio, value ? "high" : "low");
    if (rc) return rc;

    return 0;
}

/*
 * gpio_set_value - write a GPIO output value.
 * Original: XGpioPs_WritePin
 */
int32_t gpio_set_value(uint8_t gpio, uint8_t value)
{
    int linux_gpio = gpio_linux_num(gpio);
    return gpio_write_value(linux_gpio, (int)value);
}

/* ==========================================================================
 * I2C stubs
 * I2C (iic_init / i2c_reg_read / i2c_reg_write) is initialised in the
 * original platform_init() but no I2C transactions appear in the RF-init
 * sequence (main.c, rfsoc.c, lmk04828.c).  Stubs are provided for
 * completeness.
 * ========================================================================== */
int i2c_reg_read(uint16_t slave_addr, uint16_t addr, uint8_t *p_data)
{
    (void)slave_addr; (void)addr; (void)p_data;
    fprintf(stderr, "i2c_reg_read: not implemented (not used in RF-init flow)\n");
    return -1;
}

int i2c_reg_write(uint16_t slave_addr, uint16_t addr, uint8_t data)
{
    (void)slave_addr; (void)addr; (void)data;
    fprintf(stderr, "i2c_reg_write: not implemented (not used in RF-init flow)\n");
    return -1;
}

/* ==========================================================================
 * Utility functions
 * ========================================================================== */
uint32_t ad_pow2(uint32_t number)
{
    uint32_t index, mask = 1;
    for (index = 1; index < number; index++)
        mask = (mask << 1) ^ 1;
    return mask;
}

/* Original standalone: usleep() – identical in Linux */
void udelay(uint32_t usecs)
{
    usleep((useconds_t)usecs);
}

/* Original standalone: usleep(msecs * 1000) */
void mdelay(uint32_t msecs)
{
    usleep((useconds_t)msecs * 1000U);
}
