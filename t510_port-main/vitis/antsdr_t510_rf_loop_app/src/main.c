#include "devices/platform_drivers.h"
#include "lmk04828/lmk04828.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xrfdc.h"
#include "rfsoc/rfsoc.h"

#define RFDC_DEVICE_ID       	XPAR_XRFDC_0_DEVICE_ID

/************************** Variable Definitions ****************************/
XRFdc  RFdcInst;
XRFdc_DSA_Settings DSA_Settings;
u32 Status;
//取值范围2250~40500
uint32_t uACurrent[8] = {40500, 40500, 40500,40500,40500,40500,40500, 40500};
uint32_t Tile_Id, Block_Id;
uint64_t ADC_FS,DAC_FS;
XRFdc_Mixer_Settings Mixer_Settings;
double Mixer_ADC_NCO_Freq;
double Mixer_DAC_NCO_Freq;
uint32_t dac_nco_nyquist,adc_nco_nyquist;
uint32_t BaseSampleFreq;


extern spi_device lmk04828_spi;
int main(void) {
	print("**************************************************\n\r");
	print("********antsdr T510 CH8 standalone test begin!*********\n\r");
	print("**************************************************\n\r");
	printf("Please wait...\n");
	platform_init();
	gpio_set_value(LMK_RESET, 1);
	mdelay(1000);
	gpio_set_value(LMK_RESET, 0);
	mdelay(1000);
	gpio_set_value(LMK_SYNC, 0);
	lmk04828_config(&lmk04828_spi, 245.76e6);
	lmk04828_set_sysref_req_mode(&lmk04828_spi);

	//初始化这个设备
	RFdcDcp_initial(&RFdcInst,RFDC_DEVICE_ID);
	//将每个title先进行reset到GUI的默认设置
	for (Tile_Id = 0; Tile_Id < 4; Tile_Id++) {
		XRFdc_Reset(&RFdcInst, XRFDC_DAC_TILE, Tile_Id);
		XRFdc_Reset(&RFdcInst, XRFDC_ADC_TILE, Tile_Id);
	}
	//读取ADC和DAC的采样率
	ADC_FS = RFdcInst.ADC_Tile[0].PLL_Settings.SampleRate * 1e9;
	printf("ADC converter samplerate=%ldHz\n", ADC_FS);
	DAC_FS = RFdcInst.DAC_Tile[0].PLL_Settings.SampleRate * 1e9;
	printf("DAC converter samplerate=%ldHz\n", DAC_FS);
	//设置ADC的衰减DSA,设置DAC的功率放大VOP
	//Dither: Selects if dither is enabled for the selected tile. Dither should be enabled unless the
	//sample rate is under 0.75 times the maximum sampling rate for the RF-ADC.
	DSA_Settings.DisableRTS  = 1; //关闭DSA衰减
	DSA_Settings.Attenuation = 0; //设置DSA衰减的值
	for (Tile_Id = 0; Tile_Id < 4; Tile_Id++)
		for (Block_Id = 0; Block_Id < 2; Block_Id++) {
			//设置发射功率
			Status = XRFdc_SetDACVOP(&RFdcInst, Tile_Id, Block_Id * 2, uACurrent[Tile_Id * 2 + Block_Id]);
			printf("tile=%d,block=%d,XRFdc_SetDACVOP,Status=%d\n", Tile_Id, Block_Id*2, Status);
		    //设置DSA衰减的设置
			Status = XRFdc_SetDSA(&RFdcInst, Tile_Id, Block_Id, &DSA_Settings);
			Status = XRFdc_GetDSA(&RFdcInst, Tile_Id, Block_Id, &DSA_Settings);
			//是否进行防抖动
			Status = XRFdc_SetDither(&RFdcInst, Tile_Id, Block_Id, 1);
			printf("tile=%d,block=%d,Attenuation=%f,Status=%d\n", Tile_Id, Block_Id,
					DSA_Settings.Attenuation, Status);
		}
	//设置奈奎斯特区域，混频相关设置
	    Mixer_DAC_NCO_Freq=1500;
		if (Mixer_DAC_NCO_Freq*1e6 < DAC_FS / 2)
			dac_nco_nyquist = 1;
		else {
			dac_nco_nyquist = 2;
			Mixer_DAC_NCO_Freq = -Mixer_DAC_NCO_Freq;
		}
		for (Tile_Id = 0; Tile_Id < 4; Tile_Id++) {
			for (Block_Id = 0; Block_Id < 2; Block_Id++) {
				Status = XRFdc_SetNyquistZone(&RFdcInst, XRFDC_DAC_TILE, Tile_Id,
						Block_Id*2, dac_nco_nyquist);
				if (Status != XST_SUCCESS)
					printf("Tile_Id=%d,Block_Id=%d,XRFdc_SetNyquistZone fail\n",
							Tile_Id, Block_Id*2);
				Status =XRFdc_ConfigMixer(&RFdcInst, XRFDC_DAC_TILE, Tile_Id,
						Block_Id*2,Mixer_DAC_NCO_Freq);
				if (Status != XST_SUCCESS)
					printf("Tile_Id=%d,Block_Id=%d,XRFdc_ConfigMixer fail\n",
							Tile_Id, Block_Id);
				printf("DAC NCO frequency of Tile#%d Block%d is set to %f\n",
										Tile_Id, Block_Id, Mixer_DAC_NCO_Freq);
			}
		}

	    Mixer_ADC_NCO_Freq=1500;
		if (Mixer_ADC_NCO_Freq*1e6  < DAC_FS / 2){
			adc_nco_nyquist = 1;
			Mixer_ADC_NCO_Freq = -Mixer_ADC_NCO_Freq;
		}
		else {
			adc_nco_nyquist = 2;
			Mixer_ADC_NCO_Freq = Mixer_ADC_NCO_Freq;
		}
		for (Tile_Id = 0; Tile_Id < 4; Tile_Id++) {
			for (Block_Id = 0; Block_Id < 2; Block_Id++) {
				Status = XRFdc_SetNyquistZone(&RFdcInst, XRFDC_ADC_TILE, Tile_Id,
						Block_Id, adc_nco_nyquist);
				if (Status != XST_SUCCESS)
					printf("Tile_Id=%d,Block_Id=%d,XRFdc_SetNyquistZone fail\n",
							Tile_Id, Block_Id);
				Status =XRFdc_ConfigMixer(&RFdcInst, XRFDC_ADC_TILE, Tile_Id,
						Block_Id,Mixer_ADC_NCO_Freq);
				if (Status != XST_SUCCESS)
					printf("Tile_Id=%d,Block_Id=%d,XRFdc_ConfigMixer fail\n",
							Tile_Id, Block_Id);
				printf("ADC NCO frequency of Tile#%d Block%d is set to %f\n",
										Tile_Id, Block_Id, Mixer_ADC_NCO_Freq);
			}
		}
		//根据基带采样率去设置抽取和插值的系数
		BaseSampleFreq=245.76e6;
	    XRFdc_SetBaseSampleFreq(&RFdcInst, ADC_FS, BaseSampleFreq);
	    //设置ADC的QMC
	    XRFdc_SetQMC(&RFdcInst, XRFDC_ADC_TILE);
	    u32 status=1;
	  while(status){
	       status=XRFdc_MTS_SYNC(&RFdcInst, &lmk04828_spi);
	  }

		print("**************************************************\n\r");
		print("********antsdr T510 CH8 standalone test finsh!*********\n\r");
		print("**************************************************\n\r");
	return 0;

};
