/*
 * lmk04828.h
 *
 *  Created on: 2025Äê3ÔÂ6ÈÕ
 *      Author: agh
 */
#include "../devices/platform_drivers.h"
#include "../devices/parameters.h"
#include <stdint.h>
#include <stdio.h>
int32_t spi_write24(spi_device *spi, uint32_t val);
int32_t spi_write32(spi_device *spi, uint32_t val);
int32_t lmk04828_spi_readm(spi_device *spi, uint32_t reg,uint8_t *rbuf);
int32_t lmk04828_spi_write(spi_device *spi, uint32_t val);
int32_t lmk04828_spi_read(spi_device *spi, uint32_t reg);
int32_t lmk04828_set_sysref_req_mode(spi_device *spi);
int32_t lmk04828_set_sysref_continuous_mode(spi_device *spi);
int32_t lmk04828_set_sysref_pulse_mode(spi_device *spi,uint32_t pluse_cnt);
int32_t lmk04828_config(spi_device *spi, uint32_t freq);
