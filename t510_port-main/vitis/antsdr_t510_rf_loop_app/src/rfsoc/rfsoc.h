#include "xrfdc.h"
#include "../devices/platform_drivers.h"
int RFdcDcp_initial(XRFdc *RFdcInstPtr,u16 RFdcDeviceId);
u32 XRFdc_ConfigMixer(XRFdc *RFdcInstPtr, u32 Type, u32 Tile_Id, u32 Block_Id,double Freq_set);
u32 XRFdc_SetBaseSampleFreq(XRFdc *RFdcInstPtr,uint64_t FS, uint32_t BaseSampleFreq);
u32 XRFdc_SetBaseSampleFreq(XRFdc *RFdcInstPtr,uint64_t FS, uint32_t BaseSampleFreq);
u32 XRFdc_SetQMC(XRFdc *RFdcInstPtr, u32 Type);
int XRFdc_MTS_SYNC (XRFdc *RFdcInstPtr, spi_device * spi);
