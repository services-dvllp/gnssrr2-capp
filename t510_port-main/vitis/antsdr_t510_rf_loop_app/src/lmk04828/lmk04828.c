
/*
 *  lmk04828.c
 *
 *  Created on: 2025年3月6日
 *        Author: agh
 */
#include "lmk04828.h"

#include <stdint.h>
#include <stdio.h>

#include "../devices/parameters.h"
#include "../devices/platform_drivers.h"

uint32_t lmk04828_init_data_245p76[] = {// CLK0=10Mhz  VCXO: 122.88MHz   out:245.76Mhz  sys:0.96Mhz no reset
		0x000090,
		0x000010,
		0x000200,
		0x000306,
		0x0004D0,
		0x00055B,
		0x000600,
		0x000C51,
		0x000D04,
		0x01000C,
		0x010155,
		0x010255,
		0x010300,
		0x010422,
		0x010500,
		0x0106F0,
		0x010755,
		0x01080C,
		0x010955,
		0x010A55,
		0x010B00,
		0x010C22,
		0x010D00,
		0x010EF0,
		0x010F15,
		0x01100C,
		0x011155,
		0x011255,
		0x011300,
		0x011402,
		0x011500,
		0x0116F0,
		0x011755,
		0x01180C,
		0x011955,
		0x011A55,
		0x011B00,
		0x011C02,
		0x011D00,
		0x011EF0,
		0x011F15,
		0x01200C,
		0x012155,
		0x012255,
		0x012300,
		0x012422,
		0x012500,
		0x0126F0,
		0x012705,
		0x01280C,
		0x012955,
		0x012A55,
		0x012B00,
		0x012C02,
		0x012D00,
		0x012EF0,
		0x012F55,
		0x01300C,
		0x013155,
		0x013255,
		0x013300,
		0x013402,
		0x013500,
		0x0136F0,
		0x013755,
		0x013825,
		0x013902,
		0x013A0C,
		0x013B00,
		0x013C00,
		0x013D08,
		0x013E03,
		0x013F00,
		0x014000,
		0x014100,
		0x014200,
		0x014351,
		0x0144FF,
		0x01457F,
		0x014638,
		0x01470A,
		0x014833,
		0x014940,
		0x014A0B,
		0x014B16,
		0x014C00,
		0x014D00,
		0x014EC0,
		0x014F7F,
		0x015003,
		0x015102,
		0x015200,
		0x015300,
		0x01547D,
		0x015503,
		0x015600,
		0x015700,
		0x01587D,
		0x015906,
		0x015A00,
		0x015BD4,
		0x015C20,
		0x015D00,
		0x015E00,
		0x015F13,
		0x016000,
		0x016101,
		0x016244,
		0x016300,
		0x016400,
		0x01650C,
		0x0171AA,
		0x017202,
		0x017C15,
		0x017D33,
		0x016600,
		0x016700,
		0x01680C,
		0x016959,
		0x016A20,
		0x016B00,
		0x016C00,
		0x016D00,
		0x016E3B,
		0x017300,
		0x018200,
		0x018300,
		0x018400,
		0x018500,
		0x018800,
		0x018900,
		0x018A00,
		0x018B00,
		0x1FFD00,
		0x1FFE00,
		0x1FFF53,
};

/*
uint32_t lmk04828_init_data_245p76[] = {// CLK1=10Mhz  VCXO: 122.88MHz   out:245.76Mhz  sys:0.96Mhz
		0x000090,
		0x000010,
		0x000200,
		0x000306,
		0x0004D0,
		0x00055B,
		0x000600,
		0x000C51,
		0x000D04,
		0x01000C,
		0x010155,
		0x010255,
		0x010300,
		0x010422,
		0x010500,
		0x0106F0,
		0x010755,
		0x01080C,
		0x010955,
		0x010A55,
		0x010B00,
		0x010C22,
		0x010D00,
		0x010EF0,
		0x010F15,
		0x01100C,
		0x011155,
		0x011255,
		0x011300,
		0x011402,
		0x011500,
		0x0116F0,
		0x011755,
		0x01180C,
		0x011955,
		0x011A55,
		0x011B00,
		0x011C02,
		0x011D00,
		0x011EF0,
		0x011F15,
		0x01200C,
		0x012155,
		0x012255,
		0x012300,
		0x012422,
		0x012500,
		0x0126F0,
		0x012705,
		0x01280C,
		0x012955,
		0x012A55,
		0x012B00,
		0x012C02,
		0x012D00,
		0x012EF0,
		0x012F55,
		0x01300C,
		0x013155,
		0x013255,
		0x013300,
		0x013402,
		0x013500,
		0x0136F0,
		0x013755,
		0x013825,
		0x013902,
		0x013A0C,
		0x013B00,
		0x013C00,
		0x013D08,
		0x013E03,
		0x013F00,
		0x014000,
		0x014100,
		0x014200,
		0x014351,
		0x0144FF,
		0x01457F,
		0x014638,
		0x01471B,
		0x014800,
		0x014940,
		0x014A0B,
		0x014B16,
		0x014C00,
		0x014D00,
		0x014EC0,
		0x014F7F,
		0x015003,
		0x015102,
		0x015200,
		0x015300,
		0x01547D,
		0x015500,
		0x01567D,
		0x015700,
		0x01587D,
		0x015906,
		0x015A00,
		0x015BD4,
		0x015C20,
		0x015D00,
		0x015E00,
		0x015F13,
		0x016000,
		0x016101,
		0x016244,
		0x016300,
		0x016400,
		0x01650C,
		0x0171AA,
		0x017202,
		0x017C15,
		0x017D33,
		0x016600,
		0x016700,
		0x01680C,
		0x016959,
		0x016A20,
		0x016B00,
		0x016C00,
		0x016D00,
		0x016E3B,
		0x017300,
		0x018200,
		0x018300,
		0x018400,
		0x018500,
		0x018800,
		0x018900,
		0x018A00,
		0x018B00,
		0x1FFD00,
		0x1FFE00,
		0x1FFF53,
};
*/
/*
uint32_t lmk04828_init_data_245p76[] = {// CLK2=10Mhz  VCXO: 122.88MHz   out:245.76Mhz  sys:0.96Mhz
		0x000090,
		0x000010,
		0x000200,
		0x000306,
		0x0004D0,
		0x00055B,
		0x000600,
		0x000C51,
		0x000D04,
		0x01000C,
		0x010155,
		0x010255,
		0x010300,
		0x010422,
		0x010500,
		0x0106F0,
		0x010755,
		0x01080C,
		0x010955,
		0x010A55,
		0x010B00,
		0x010C22,
		0x010D00,
		0x010EF0,
		0x010F15,
		0x01100C,
		0x011155,
		0x011255,
		0x011300,
		0x011402,
		0x011500,
		0x0116F0,
		0x011755,
		0x01180C,
		0x011955,
		0x011A55,
		0x011B00,
		0x011C02,
		0x011D00,
		0x011EF0,
		0x011F15,
		0x01200C,
		0x012155,
		0x012255,
		0x012300,
		0x012422,
		0x012500,
		0x0126F0,
		0x012705,
		0x01280C,
		0x012955,
		0x012A55,
		0x012B00,
		0x012C02,
		0x012D00,
		0x012EF0,
		0x012F55,
		0x01300C,
		0x013155,
		0x013255,
		0x013300,
		0x013402,
		0x013500,
		0x0136F0,
		0x013755,
		0x013825,
		0x013902,
		0x013A0C,
		0x013B00,
		0x013C00,
		0x013D08,
		0x013E03,
		0x013F00,
		0x014000,
		0x014100,
		0x014200,
		0x014351,
		0x0144FF,
		0x01457F,
		0x014638,
		0x01472F,
		0x014800,
		0x014940,
		0x014A0B,
		0x014B16,
		0x014C00,
		0x014D00,
		0x014EC0,
		0x014F7F,
		0x015003,
		0x015102,
		0x015200,
		0x015300,
		0x01547D,
		0x015503,
		0x015600,
		0x015700,
		0x01587D,
		0x015906,
		0x015A00,
		0x015BD4,
		0x015C20,
		0x015D00,
		0x015E00,
		0x015F13,
		0x016000,
		0x016101,
		0x016244,
		0x016300,
		0x016400,
		0x01650C,
		0x0171AA,
		0x017202,
		0x017C15,
		0x017D33,
		0x016600,
		0x016700,
		0x01680C,
		0x016959,
		0x016A20,
		0x016B00,
		0x016C00,
		0x016D00,
		0x016E3B,
		0x017300,
		0x018200,
		0x018300,
		0x018400,
		0x018500,
		0x018800,
		0x018900,
		0x018A00,
		0x018B00,
		0x1FFD00,
		0x1FFE00,
		0x1FFF53,
};
*/



/*
uint32_t lmk04828_init_data_245p76[] = {// CLK0=100Mhz  VCXO: 122.88MHz   out:245.76Mhz  sys:0.96Mhz
		0x000090,
		0x000010,
		0x000200,
		0x000306,
		0x0004D0,
		0x00055B,
		0x000600,
		0x000C51,
		0x000D04,
		0x01000C,
		0x010155,
		0x010255,
		0x010300,
		0x010422,
		0x010500,
		0x0106F0,
		0x010755,
		0x01080C,
		0x010955,
		0x010A55,
		0x010B00,
		0x010C22,
		0x010D00,
		0x010EF0,
		0x010F15,
		0x01100C,
		0x011155,
		0x011255,
		0x011300,
		0x011402,
		0x011500,
		0x0116F0,
		0x011755,
		0x01180C,
		0x011955,
		0x011A55,
		0x011B00,
		0x011C02,
		0x011D00,
		0x011EF0,
		0x011F15,
		0x01200C,
		0x012155,
		0x012255,
		0x012300,
		0x012422,
		0x012500,
		0x0126F0,
		0x012705,
		0x01280C,
		0x012955,
		0x012A55,
		0x012B00,
		0x012C02,
		0x012D00,
		0x012EF0,
		0x012F55,
		0x01300C,
		0x013155,
		0x013255,
		0x013300,
		0x013402,
		0x013500,
		0x0136F0,
		0x013755,
		0x013825,
		0x013902,
		0x013A0C,
		0x013B00,
		0x013C00,
		0x013D08,
		0x013E03,
		0x013F00,
		0x014000,
		0x014100,
		0x014200,
		0x014351,
		0x0144FF,
		0x01457F,
		0x014638,
		0x01470A,
		0x014833,
		0x014940,
		0x014A0B,
		0x014B16,
		0x014C00,
		0x014D00,
		0x014EC0,
		0x014F7F,
		0x015003,
		0x015102,
		0x015200,
		0x015302,
		0x015471,
		0x015503,
		0x015600,
		0x015700,
		0x01587D,
		0x015903,
		0x015A00,
		0x015BD4,
		0x015C20,
		0x015D00,
		0x015E00,
		0x015F13,
		0x016000,
		0x016101,
		0x016244,
		0x016300,
		0x016400,
		0x01650C,
		0x0171AA,
		0x017202,
		0x017C15,
		0x017D33,
		0x016600,
		0x016700,
		0x01680C,
		0x016959,
		0x016A20,
		0x016B00,
		0x016C00,
		0x016D00,
		0x016E3B,
		0x017300,
		0x018200,
		0x018300,
		0x018400,
		0x018500,
		0x018800,
		0x018900,
		0x018A00,
		0x018B00,
		0x1FFD00,
		0x1FFE00,
		0x1FFF53,
};
*/
uint32_t lmk04828_init_data_200[] = {};
uint32_t lmk04828_init_data_240[] = {};
//返回值ret为0表示配置成功
//spi write three bytes
int32_t spi_write24(spi_device *spi, uint32_t val) {
	uint8_t buf[3];
	int32_t ret;
	uint32_t cmd = val;

	buf[0] = cmd >> 16;
	buf[1] = cmd >> 8;
	buf[2] = cmd & 0xFF;

	ret = spi_write_and_read(spi, buf, 3);
	return ret;
}
//spi write four bytes
int32_t spi_write32(spi_device *spi, uint32_t val) {
	uint8_t buf[4];
	int32_t ret;
	uint32_t cmd = val;

	buf[0] = cmd >> 24;
	buf[1] = cmd >> 16;
	buf[2] = cmd >> 8;
	buf[3] = cmd & 0xFF;

	ret = spi_write_and_read(spi, buf, 4);
	return ret;
}


int32_t lmk04828_spi_readm(spi_device *spi, uint32_t reg,uint8_t *rbuf)
{
	uint8_t buf[3];
	int32_t ret;
	uint16_t cmd;

	cmd = 0x8000 | (reg & 0x1FFF);
	buf[0] = cmd >> 8;
	buf[1] = cmd & 0xFF;
	buf[2] = 0;
	ret = spi_write_and_read(spi, buf, 3);
	*rbuf=buf[2];
	return ret;
}


int32_t lmk04828_spi_write(spi_device *spi, uint32_t val) {
	int32_t ret;
	ret= spi_write24(spi,val);
	return ret;

}

int32_t lmk04828_spi_read(spi_device *spi, uint32_t reg)
{
	uint8_t buf;
	int32_t ret;

	ret = lmk04828_spi_readm(spi, reg, &buf);
	if (ret < 0)
		return ret;
	return buf;
}
int32_t lmk04828_set_sysref_continuous_mode(spi_device *spi){
	int32_t ret;
	//拉高SYSREF_CLR
	mdelay(10);
	ret=lmk04828_spi_write(spi, 0x0143D1);
	//让SYNC管脚去影响 dividers,
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x014400);
	// Perform SYNC
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x0143F1);
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x0143D1);
 	//不让SYNC管脚去影响 dividers
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x0144FF);
    //Release reset of local SYSREF digital delay
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x014351);
 	 //disable SYSREF_REQ_EN
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x016A20);
	//Select continuous as SYSREF signal: SYSREF_MUX = 3.
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x013903);
	return ret;
}

int32_t lmk04828_set_sysref_req_mode(spi_device *spi){
	int32_t ret;
	//拉高SYSREF_CLR
	mdelay(10);
	ret=lmk04828_spi_write(spi, 0x0143D1);
	//让SYNC管脚去影响 dividers,
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x014400);
	// Perform SYNC
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x0143F1);
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x0143D1);
 	//不让SYNC管脚去影响 dividers
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x0144FF);
    //Release reset of local SYSREF digital delay
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x014351);
    //set SYNC_MODE = 0.
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x014350);
	//Select pulser as SYSREF signal: SYSREF_MUX = 2.
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x013902);
 	 //enable SYSREF_REQ_EN
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x016A60);
	return  ret;

}



//产生的pluse的数目为2**pluse_cnt
int32_t lmk04828_set_sysref_pulse_mode(spi_device *spi,uint32_t pluse_cnt){
	int32_t ret;
	//拉高SYSREF_CLR
	mdelay(10);
	ret=lmk04828_spi_write(spi, 0x0143D1);
	//让SYNC管脚去影响 dividers,
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x014400);
	// Perform SYNC
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x0143F1);
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x0143D1);
 	//不让SYNC管脚去影响 dividers
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x0144FF);
    //Release reset of local SYSREF digital delay
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x014351);
 	 //disable SYSREF_REQ_EN
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x016A20);
	 //Allow pin SYNC event to start pulser: SYNC_MODE = 2.
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x014352);
	mdelay(10);
	 //Select pulser as SYSREF signal: SYSREF_MUX = 2.
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x013902);
	//设置产生的脉冲数目
	mdelay(10);
	ret|=lmk04828_spi_write(spi, 0x013E00 | (pluse_cnt & 0x3));
	return ret;
}


int32_t lmk04828_config(spi_device *spi, uint32_t freq) {
	int ret;
	int i;
	int32_t lock_pll1 = 0;
	int32_t lock_pll2 = 0;
	while(!(lock_pll1&lock_pll2)){
	if (freq == 245.76e6)
		for (i = 0; i < ARRAY_SIZE(lmk04828_init_data_245p76); i++) {
			ret |= spi_write24(spi, lmk04828_init_data_245p76[i]);
			mdelay(10);
		}
	else if (freq == 200e6)
		for (i = 0; i < ARRAY_SIZE(lmk04828_init_data_200); i++) {
			ret |= spi_write24(spi, lmk04828_init_data_200[i]);
			mdelay(10);
		}
	else if (freq == 240e6)
		for (i = 0; i < ARRAY_SIZE(lmk04828_init_data_240); i++) {
			ret |= spi_write24(spi, lmk04828_init_data_240[i]);
			mdelay(10);
		}

	sleep(2);
	lock_pll1 = lmk04828_spi_read(spi, 0X182) >> 1 & 0x1;
    lock_pll2 = lmk04828_spi_read(spi, 0X183) >> 1 & 0x1;
	mdelay(500);
	}
	printf("rf:%d,total register number=%d\n", spi->device_id+1, i);
	uint8_t val = lmk04828_spi_read(spi, 6);
	printf("rf:%d,lmk04828_reg[6]=%x\n", spi->device_id+1, val);
    printf("read from rf1_lmk04828 pll1_lock=0x%x\n", lock_pll1);
    printf("read from rf1_lmk04828 pll2_lock=0x%x\n", lock_pll2);
    printf("*************************************\n");


	return ret;
}

