/*
 * parameters.h - Linux userspace port of the T510 hardware parameters.
 *
 * Original standalone values are kept as documentation.
 * Linux equivalents are used at runtime.
 */
#ifndef PARAMETERS_H_
#define PARAMETERS_H_

/* -------------------------------------------------------------------------
 * SPI - LMK04828 is on PSU_SPI_1 (base 0xFF050000).
 * Linux: /dev/spidev<BUS>.<CS>
 *   BUS = kernel-assigned SPI bus number for psu_spi_1
 *         (alias spi1 -> /axi/spi@ff050000 in the board device tree)
 *   CS  = value of "reg" on the spidev child node in the device tree
 *
 * The T510 PetaLinux device tree exposes exactly one spidev under
 * spi@ff050000:
 *     num-cs = <0x01>;
 *     spidev@0 { compatible = "linux,spidev"; reg = <0x00>; ... };
 * so the kernel creates /dev/spidev1.0 only.
 *
 * NOTE: the Vitis standalone platform_drivers.c uses chip_select = 1 with
 * XSPIPS_DECODE_SSELECT_OPTION (external 3-to-8 decoder). If your board
 * actually routes the LMK04828 select through that decoder you will need
 * to extend the device tree (num-cs / spidev children) and/or add a
 * dedicated driver; /dev/spidev cannot drive the decoded mode.
 *
 * Verify on target:  ls /dev/spidev*  and  ls /sys/bus/spi/devices/
 * ------------------------------------------------------------------------- */
#define SPI_DEVICE_PATH     "/dev/spidev1.0"

/* SPI clock: PSU_SPI_1 input clock = 199998001 Hz, prescaler=64 → ~3.125 MHz */
#define SPI_SPEED_HZ        3125000U

/* -------------------------------------------------------------------------
 * GPIO - ZynqMP PS GPIO (psu_gpio_0).
 * Standalone pin numbers:
 *   LMK_SYNC        = 78  (EMIO[0])
 *   LMK_RESET       = 29  (MIO[29])
 *   LMK_REF_SELECT0 = 33  (MIO[33])
 *   LMK_REF_SELECT1 = 34  (MIO[34])
 *
 * Linux GPIO number = GPIO_CHIP_BASE + standalone_pin_number
 *
 * GPIO_CHIP_BASE is the kernel-assigned base for the zynqmp_gpio gpiochip.
 * Find it on the target:
 *   for d in /sys/class/gpio/gpiochip*; do
 *       echo "$d base=$(cat $d/base) label=$(cat $d/label)"; done
 * Look for the entry with label "zynqmp_gpio".
 *
 * On typical ZynqMP PetaLinux builds this is 338, but it varies.
 * Adjust GPIO_CHIP_BASE below before running.
 * ------------------------------------------------------------------------- */
#define GPIO_CHIP_BASE      338   /* <-- verify on target */

/* GPIO numbers in standalone -> Linux offset */
#define GPIO_RESET_PIN      4     /* from original parameters.h (unused in main flow) */

#endif /* PARAMETERS_H_ */
