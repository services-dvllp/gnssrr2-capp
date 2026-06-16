/*
 * platform_drivers.h - Linux userspace port.
 * Maintains the same API surface as the Vitis standalone version so that
 * lmk04828.c and rfsoc.c compile without modification.
 */
#ifndef PLATFORM_DRIVERS_H_
#define PLATFORM_DRIVERS_H_

#include <stdint.h>
#include <stdio.h>
#include <unistd.h>
#include "parameters.h"

/* --------------------------------------------------------------------------
 * GPIO pin numbers (standalone numbering; Linux number = GPIO_CHIP_BASE + pin)
 * -------------------------------------------------------------------------- */
#define GPIO_OFFSET         78   /* EMIO base offset in standalone */
#define LMK_SYNC            (GPIO_OFFSET + 0)   /* = 78, EMIO[0] */
#define LMK_RESET           29
#define LMK_REF_SELECT1     34
#define LMK_REF_SELECT0     33

#define SUCCESS  0
#define FAILURE -1

#define ARRAY_SIZE(ar)  (sizeof(ar)/sizeof(ar[0]))

/* --------------------------------------------------------------------------
 * spi_device - same layout as original so that lmk04828.c is unchanged
 * -------------------------------------------------------------------------- */
typedef struct {
    uint32_t  base_address; /* not used in Linux (kept for API compatibility) */
    uint32_t  device_id;    /* not used in Linux (kept for API compatibility) */
    uint8_t   chip_select;
    uint32_t  cpha;
    uint32_t  cpol;
    uint8_t   id_no;
} spi_device;

/* --------------------------------------------------------------------------
 * Platform API
 * -------------------------------------------------------------------------- */
int32_t platform_init(void);
int32_t spi_write_and_read(spi_device *dev, uint8_t *data, uint8_t bytes_number);
int32_t gpio_init(uint16_t device_id);
int32_t gpio_direction_output(uint8_t gpio, uint8_t value);
int32_t gpio_set_value(uint8_t gpio, uint8_t value);

/* I2C stubs (not called in the main RF-init flow, kept for completeness) */
int i2c_reg_read(uint16_t slave_addr, uint16_t addr, uint8_t *p_data);
int i2c_reg_write(uint16_t slave_addr, uint16_t addr, uint8_t data);

uint32_t ad_pow2(uint32_t number);
void udelay(uint32_t usecs);
void mdelay(uint32_t msecs);

/* map Xilinx print macros to printf */
#define ad_printf  printf
#define xil_printf printf

#endif /* PLATFORM_DRIVERS_H_ */
