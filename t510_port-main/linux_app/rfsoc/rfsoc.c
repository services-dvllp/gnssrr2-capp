#include "rfsoc.h"

#include "../xrfdc_linux.h"
#include "../devices/parameters.h"
#include "../devices/platform_drivers.h"
#include "xil_io.h"
#include "sleep.h"
#include "../lmk04828/lmk04828.h"
int RFdcDcp_initial(XRFdc *RFdcInstPtr,u16 RFdcDeviceId)
{
	XRFdc_Config *ConfigPtr;
	u32 status;
	ConfigPtr=XRFdc_LookupConfig(RFdcDeviceId);
	if(ConfigPtr == NULL){
		printf("no RRFdc device!\n\r");
		return XRFDC_FAILURE;
	}
	status=XRFdc_CfgInitialize(RFdcInstPtr,ConfigPtr);
	if(status==XRFDC_FAILURE){
		printf("XRFdc_CfgInitialize fail!\n\r");
		return XRFDC_FAILURE;
	}
	return status;
};
u32 XRFdc_ConfigMixer(XRFdc *RFdcInstPtr, u32 Type, u32 Tile_Id, u32 Block_Id,double Freq_set)
{
	u32 Status=0;
	XRFdc_Mixer_Settings Mixer_Settings;
	Status|=XRFdc_GetMixerSettings (RFdcInstPtr, Type, Tile_Id, Block_Id,&Mixer_Settings);
	if (Status != XRFDC_SUCCESS) {
        printf("Tile_Id=%d,Block_Id=%d,XRFdc_GetMixerSettings fail\n",Tile_Id, Block_Id);
		return XRFDC_FAILURE;
	}
    //Mixer Settings are updated with a tile event
	Mixer_Settings.EventSource = XRFDC_EVNT_SRC_TILE;
	//����NCO��Ƶ��
	Mixer_Settings.Freq = Freq_set; //unit is MHz
	//����Mixer
	Status|=XRFdc_SetMixerSettings (RFdcInstPtr, Type, Tile_Id, Block_Id,&Mixer_Settings);
	//��λNCOPhase
	Status|=XRFdc_ResetNCOPhase(RFdcInstPtr, Type, Tile_Id, Block_Id);
	//��������
	Status|=XRFdc_UpdateEvent(RFdcInstPtr, Type, Tile_Id, Block_Id, XRFDC_EVENT_MIXER);
	//ͨ��sysref�������Mixer����
	gpio_set_value(LMK_SYNC, 1);
	usleep(1000);
	gpio_set_value(LMK_SYNC, 0);
    return Status;

};
//ADC��DAC�Ļ�������������Ϊһ��
u32 XRFdc_SetBaseSampleFreq(XRFdc *RFdcInstPtr, uint64_t FS, uint32_t BaseSampleFreq, uint32_t num_tiles) {
	uint32_t intr_dec = (uint32_t) (FS / BaseSampleFreq);
	uint32_t Tile_Id, Block_Id;
	for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {
		for (Block_Id = 0; Block_Id < 2; Block_Id++) {
			XRFdc_SetInterpolationFactor(RFdcInstPtr, Tile_Id, Block_Id * 2,
					intr_dec);
			printf("XRFdc_SetInterpolationFactor Tile#%d Block%d=%d\n", Tile_Id,
					Block_Id*2, intr_dec);
		}
	}
	for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {
		for (Block_Id = 0; Block_Id < 2; Block_Id++) {
			XRFdc_SetDecimationFactor(RFdcInstPtr, Tile_Id, Block_Id, intr_dec);
			printf("XRFdc_SetDecimationFactor Tile#%d Block%d=%d\n", Tile_Id,
					Block_Id, intr_dec);
		}
	}

	for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {
		for (Block_Id = 0; Block_Id < 2; Block_Id++) {
			XRFdc_GetInterpolationFactor(RFdcInstPtr, Tile_Id, Block_Id * 2,
					&intr_dec);
			printf("XRFdc_GetInterpolationFactor Tile#%d Block%d=%d\n", Tile_Id,
					Block_Id, intr_dec);
		}
	}
	for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {
		for (Block_Id = 0; Block_Id < 2; Block_Id++) {
			XRFdc_GetDecimationFactor(RFdcInstPtr, Tile_Id, Block_Id,
					&intr_dec);
			printf("XRFdc_GetDecimationFactor Tile#%d Block%d=%d\n", Tile_Id,
					Block_Id, intr_dec);
		}
	}

	return 0;
}
u32 XRFdc_SetQMC(XRFdc *RFdcInstPtr, u32 Type, uint32_t num_tiles) {
	u32 Status = XRFDC_SUCCESS;
	XRFdc_QMC_Settings QMCSettingsPtr;
	for (int i = 0; i < (int)num_tiles; i++)
		for (int j = 0; j < 2; j++) {
			Status = XRFdc_GetQMCSettings(RFdcInstPtr, Type, i, j * (Type + 1),
					&QMCSettingsPtr);
			printf("tile=%d,block=%d,EnableGain=%d\n", i, j,
					QMCSettingsPtr.EnableGain);
			printf("tile=%d,block=%d,GainCorrectionFactor=%f\n", i, j,
					QMCSettingsPtr.GainCorrectionFactor);
		if(Type==XRFDC_ADC_TILE){
			QMCSettingsPtr.EnableGain = 1;
			QMCSettingsPtr.GainCorrectionFactor = 1.99;
		}
			QMCSettingsPtr.EventSource = XRFDC_EVNT_SRC_SYSREF;
			Status = XRFdc_SetQMCSettings(RFdcInstPtr, Type, i, j * (Type + 1),
					&QMCSettingsPtr);
	}
	/* EventSource=SYSREF: update is triggered by the SYSREF edge on
	 * LMK_SYNC GPIO, NOT through XRFdc_UpdateEvent (which the driver
	 * rejects with "should be issued external to the driver"). */
	gpio_set_value(LMK_SYNC, 1);
	usleep(1000);
	gpio_set_value(LMK_SYNC, 0);
	for (int i = 0; i < (int)num_tiles; i++)
		for (int j = 0; j < 2; j++) {
			Status = XRFdc_GetQMCSettings(RFdcInstPtr, Type, i, j * (Type + 1),
					&QMCSettingsPtr);
			printf("tile=%d,block=%d,EnableGain=%d,Status=%d\n", i, j,
					QMCSettingsPtr.EnableGain, Status);
			printf("tile=%d,block=%d,GainCorrectionFactor=%f\n", i, j,
					QMCSettingsPtr.GainCorrectionFactor);
		}
	return Status;
}


int XRFdc_MTS_SYNC(XRFdc *RFdcInstPtr, spi_device *spi, uint32_t num_tiles) {
	u32 factor;
	u16 Tile_ADC;
	u16 Tile_DAC;
	u16 Pair_ADC;
	u16 Pair_DAC;
	s32 Status, status_adc, status_dac, i;
	u8 CalibrationMode;
	XRFdc_Mixer_Settings Mixer_Settings;
	u32 NyquistZone;
	/* ADC MTS Settings */
	XRFdc_MultiConverter_Sync_Config ADC_Sync_Config;
	/* DAC MTS Settings */
	XRFdc_MultiConverter_Sync_Config DAC_Sync_Config;

//	XRFdc_MTS_Sysref_Config(RFdcInstPtr, &DAC_Sync_Config, &ADC_Sync_Config, 1);
//�����ṩsys_ref
	gpio_set_value(LMK_SYNC, 1);
//��ʱ�ȴ�ʱ���ȶ�
	sleep(1);
	printf("=== RFdc Initialized - Running Multi-tile Sync \n");
	int dac_sync = -1;
	while (dac_sync != 0) {
		printf("\n\r=== Run DAC Sync ===\n\r");
		//��dac tile0Ϊ��׼
		XRFdc_MultiConverter_Init(&DAC_Sync_Config,NULL, NULL, 0);
		DAC_Sync_Config.Tiles = (1U << num_tiles) - 1U;
		DAC_Sync_Config.Target_Latency = -1;//��ȷ��Latency
		status_dac = XRFdc_MultiConverter_Sync(RFdcInstPtr, XRFDC_DAC_TILE,
				&DAC_Sync_Config);
		if (status_dac == XRFDC_MTS_OK) {
			printf("INFO : DAC Multi-Tile-Sync completed successfully\n\r");
			dac_sync = 0;
		} else {
			printf("INFO : DAC Multi-Tile-Sync failed\n\r");
			gpio_set_value(LMK_SYNC, 0);
			mdelay(100);
			dac_sync =-1;
			return XRFDC_FAILURE;
		}

		for (i = 0; i < (s32)num_tiles; i++) {
			if ((1 << i) & DAC_Sync_Config.Tiles) {
				if (DAC_Sync_Config.Offset[i] != DAC_Sync_Config.Offset[0]) {
					printf("DAC%d: Latency(T1) =%3d, Adjusted Delay"
							"Offset=%3d\n\r", i, DAC_Sync_Config.Latency[i],
							DAC_Sync_Config.Offset[i]);
					printf("INFO :DAC Latency is not same,DAC Multi-Tile-Sync failed\n\r");
					dac_sync =-1;
					return XRFDC_FAILURE;
				}
			}
		}
	}
  int	adc_sync = -1;
	while (adc_sync != 0) {

		printf("\n\r=== Run ADC Sync ===\n\r");
		/* Initialize ADC MTS Settings */ //adc tile0Ϊ��׼
		XRFdc_MultiConverter_Init(&ADC_Sync_Config, NULL, NULL, 0);
		ADC_Sync_Config.Tiles = (1U << num_tiles) - 1U;
		ADC_Sync_Config.Target_Latency = -1;
		status_adc = XRFdc_MultiConverter_Sync(RFdcInstPtr, XRFDC_ADC_TILE,
				&ADC_Sync_Config);
		if (status_adc == XRFDC_MTS_OK) {
			printf("INFO : ADC Multi-Tile-Sync completed successfully\n\r\n\r");
			adc_sync = 0;
		} else {
			printf("INFO : ADC Multi-Tile-Sync failed\n\r");
			adc_sync = -1;
			gpio_set_value(LMK_SYNC, 0);
			return XRFDC_FAILURE;
		}
		for (i = 0; i < (s32)num_tiles; i++) {
			if ((1 << i) & ADC_Sync_Config.Tiles) {
				if (ADC_Sync_Config.Latency[i]!=ADC_Sync_Config.Latency[0]) {
					printf("ADC%d: Latency(T1) =%3d, Adjusted Delay"
							"Offset=%3d\n\r", i, ADC_Sync_Config.Latency[i],
							ADC_Sync_Config.Offset[i]);
					printf("INFO :ADC Latency is not same,ADC Multi-Tile-Sync failed\n\r");
					adc_sync = -1;
					return XRFDC_FAILURE;
				}
			}
		}
	}
	//�ر�Sys_ref clock
	gpio_set_value(LMK_SYNC, 0);
	sleep(1);
    //1.Disable the analog SYSREF
	XRFdc_MTS_Sysref_Config(RFdcInstPtr, &DAC_Sync_Config, &ADC_Sync_Config, 0);
	//2.Set the mixer settings, NCO phase reset, QMC, and/or coarse delay.
	//3. Wait for successful return of API calls to ensure all register writes have been completed.
	/****************************************************************************/
	//Reset DAC Datapaths based on SYSREF event
	/****************************************************************************/
	for (Tile_DAC = 0; Tile_DAC < num_tiles; Tile_DAC++) {
		for (Pair_DAC = 0; Pair_DAC < 2; Pair_DAC++) {
			XRFdc_GetMixerSettings(RFdcInstPtr, XRFDC_DAC_TILE, Tile_DAC,
					Pair_DAC * 2, &Mixer_Settings);
			Mixer_Settings.EventSource = XRFDC_EVNT_SRC_SYSREF;
			Mixer_Settings.MixerType = XRFDC_MIXER_TYPE_FINE;
			Mixer_Settings.MixerMode = XRFDC_MIXER_MODE_C2R;
			XRFdc_SetMixerSettings(RFdcInstPtr, XRFDC_DAC_TILE, Tile_DAC,
					Pair_DAC * 2, &Mixer_Settings);
			XRFdc_SetDecoderMode(RFdcInstPtr, Tile_DAC, Pair_DAC * 2,
					XRFDC_DECODER_MAX_LINEARITY_MODE);
			XRFdc_GetNyquistZone(RFdcInstPtr, XRFDC_DAC_TILE, Tile_DAC,
					Pair_DAC * 2, &NyquistZone);
			XRFdc_SetInvSincFIR(RFdcInstPtr, Tile_DAC, Pair_DAC * 2, NyquistZone);
			printf("DAC NCO frequency of Tile#%d Block%d is set to %f,NyquistZone Zone%d\n",
					Tile_DAC, Pair_DAC*2, Mixer_Settings.Freq, NyquistZone);
		}
	}
	for (Tile_DAC = 0; Tile_DAC < num_tiles; Tile_DAC++) {
		for (Pair_DAC = 0; Pair_DAC < 2; Pair_DAC++) {
			Status = XRFdc_ResetNCOPhase(RFdcInstPtr, XRFDC_DAC_TILE, Tile_DAC,
					Pair_DAC * 2);
			if (Status != XST_SUCCESS)
				printf("Reset DAC_TILE NCO Tile#%d block%d fail\n", Tile_DAC,
						Pair_DAC);
		}
	}
	/****************************************************************************/
	//Reset ADC Datapaths based on SYSREF event
	/****************************************************************************/
	for (Tile_ADC = 0; Tile_ADC < num_tiles; Tile_ADC++) {
		for (Pair_ADC = 0; Pair_ADC < 2; Pair_ADC++) {
			XRFdc_GetMixerSettings(RFdcInstPtr, XRFDC_ADC_TILE, Tile_ADC,
					Pair_ADC, &Mixer_Settings);
			Mixer_Settings.EventSource = XRFDC_EVNT_SRC_SYSREF;
			Mixer_Settings.MixerType = XRFDC_MIXER_TYPE_FINE;
			Mixer_Settings.MixerMode = XRFDC_MIXER_MODE_R2C;
			XRFdc_SetMixerSettings(RFdcInstPtr, XRFDC_ADC_TILE, Tile_ADC,
					Pair_ADC, &Mixer_Settings);
			XRFdc_GetCalibrationMode(RFdcInstPtr, Tile_ADC, Pair_ADC,
					&CalibrationMode);
			XRFdc_GetNyquistZone(RFdcInstPtr, XRFDC_ADC_TILE, Tile_ADC,
					Pair_ADC, &NyquistZone);
			printf("ADC NCO frequency of Tile#%d Block%d is set to %f,CalibrationMode mode%d,NyquistZone Zone%d\n",
					Tile_ADC, Pair_ADC, Mixer_Settings.Freq, CalibrationMode,
					NyquistZone);

		}
	}
	for (Tile_ADC = 0; Tile_ADC < num_tiles; Tile_ADC++) {
		for (Pair_ADC = 0; Pair_ADC < 2; Pair_ADC++) {
			Status = XRFdc_ResetNCOPhase(RFdcInstPtr, XRFDC_ADC_TILE, Tile_ADC,
					Pair_ADC);
			if (Status != XST_SUCCESS)
				printf("Reset ADC_TILE NCO Tile#%d block%d fail", Tile_ADC,
						Pair_ADC);
		}
	}
	//4. Enable the analog SYSREF clock in continuous mode and ensure this clock is stable.
	gpio_set_value(LMK_SYNC, 1);
	sleep(1);
	//5. Enable the analog SYSREF receiver with the API command.
	XRFdc_MTS_Sysref_Config(RFdcInstPtr, &DAC_Sync_Config, &ADC_Sync_Config, 1);
	sleep(1);
	//6. Wait long enough to ensure a rising edge has been detected,
	// at this point the update would commence
	/****************************************************************************/
	//��DAC��ADC�Ļ�Ƶ�����ö�ͨ��XRFdc_UpdateEvent������ȥ
	/****************************************************************************/
	for (Tile_DAC = 0; Tile_DAC < num_tiles; Tile_DAC++) {
		for (Pair_DAC = 0; Pair_DAC < 2; Pair_DAC++) {
			XRFdc_UpdateEvent(RFdcInstPtr, XRFDC_DAC_TILE, Tile_DAC, Pair_DAC * 2,
					XRFDC_EVENT_MIXER);
		}
	}
	for (Tile_ADC = 0; Tile_ADC < num_tiles; Tile_ADC++) {
		for (Pair_ADC = 0; Pair_ADC < 2; Pair_ADC++) {
			XRFdc_UpdateEvent(RFdcInstPtr, XRFDC_ADC_TILE, Tile_ADC, Pair_ADC,
			XRFDC_EVENT_MIXER);
		}
	}

	/****************************************************************************/
	//RReport Overall Latency in T1 (Sample Clocks) and
	// Offsets (in terms of PL words) added to each FIFO
	/****************************************************************************/
	printf("\n\n\r=== Multi-Tile Sync Report ===\n\r");
	for (i = 0; i < (s32)num_tiles; i++) {
		if ((1 << i) & DAC_Sync_Config.Tiles) {
			XRFdc_GetInterpolationFactor(RFdcInstPtr, i, 0, &factor);
			printf("DAC%d: Latency(T1) =%3d, Adjusted Delay"
					"Offset(T%d) =%3d\n\r", i, DAC_Sync_Config.Latency[i],
					factor, DAC_Sync_Config.Offset[i]);
		}
	}
	for (i = 0; i < (s32)num_tiles; i++) {
		if ((1 << i) & ADC_Sync_Config.Tiles) {
			XRFdc_GetDecimationFactor(RFdcInstPtr, i, 0, &factor);
			printf("ADC%d: Latency(T1) =%3d, Adjusted Delay"
					"Offset(T%d) =%3d\n\r", i, ADC_Sync_Config.Latency[i],
					factor, ADC_Sync_Config.Offset[i]);
		}
	}
	//7. Disable the analog SYSREF receiver with the API command
	XRFdc_MTS_Sysref_Config(RFdcInstPtr, &DAC_Sync_Config, &ADC_Sync_Config, 0);
    //8. Disable the external analog SYSREF clock (optional)
//	gpio_set_value(LMK_SYNC, 0);
	return XRFDC_SUCCESS;
}
