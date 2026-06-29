/*
 * main_linux.c
 *
 * Linux userspace port of the ANTSDR T510 CH8 RF initialisation application.
 *
 * Faithfully reproduces the sequence from the original Vitis standalone main.c:
 *   1. Initialise platform (GPIO via sysfs, SPI via /dev/spidev)
 *   2. Reset and configure LMK04828 clock generator (245.76 MHz)
 *   3. Set LMK04828 SYSREF to request mode
 *   4. Initialise RFDC (XRFdc_CfgInitialize via /dev/mem mmap)
 *   5. Reset all 4 ADC and 4 DAC tiles
 *   6. Print ADC/DAC sample rates
 *   7. Configure DAC VOP (output current), DSA (attenuation), dither
 *   8. Set DAC Nyquist zone and NCO mixer frequencies
 *   9. Set ADC Nyquist zone and NCO mixer frequencies
 *  10. Set base sample frequency (interpolation / decimation factors)
 *  11. Configure ADC QMC
 *  12. Multi-Tile Synchronisation (MTS) loop
 *
 * Vitis-specific changes for Linux:
 *   print("...")      →  printf("...")     (Xilinx xil_printf removed)
 *   #include xil_io.h →  not needed (xil_printf→printf via xdebug.h stub)
 *   XRFdc register I/O  →  /dev/mem mmap (via metal_stub.c)
 *   GPIO                →  /sys/class/gpio sysfs
 *   SPI (XSpiPs)        →  /dev/spidev via ioctl SPI_IOC_MESSAGE
 *
 * Compile with the provided Makefile.
 */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <getopt.h>
#include <errno.h>
#include <fcntl.h>
#include <string.h>
#include <sys/mman.h>

/* Activate metal logging so RFDC driver error/timeout messages are visible */
#include "metal/log.h"
static void enable_metal_log(void)
{
    metal_set_log_handler(metal_default_log_handler);
    metal_set_log_level(METAL_LOG_WARNING);
}

#include "devices/platform_drivers.h"
#include "lmk04828/lmk04828.h"
#include "xrfdc_linux.h"         /* pulls in xparameters.h + BSP xrfdc.h */
#include "rfsoc/rfsoc.h"

/* --------------------------------------------------------------------------
 * RFDC device ID – same as XPAR_XRFDC_0_DEVICE_ID = 0 in the original
 * -------------------------------------------------------------------------- */
#define RFDC_DEVICE_ID    XPAR_XRFDC_0_DEVICE_ID   /* 0 */

/*
 * Jun24 PL control GPIO at 0x8005_0000:
 *   bit 4   -> axis_fir_bypass_mux_0/sel
 *   bits 3:0 -> axis_4channel_interf_0/sel
 * 0x10 selects the normal RFDC RX path with FIR/bypass mux enabled and keeps
 * the counter/test selections out of the capture path.  Leaving this register
 * at stale values such as 0x1f makes the first captures appear saturated or
 * distorted until a manual `devmem 0x80050000 w 0x10` is issued.
 */
#define PL_CONTROL_GPIO_BASE  0x80050000UL
#define PL_CONTROL_GPIO_VALUE 0x00000010U
#define PL_CONTROL_GPIO_SPAN  0x1000UL

static int write_pl_control_gpio(uint32_t value)
{
    int fd;
    void *map;
    volatile uint32_t *reg;

    fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        fprintf(stderr, "open(/dev/mem) for PL control GPIO failed: %s\n",
                strerror(errno));
        return -1;
    }

    map = mmap(NULL, PL_CONTROL_GPIO_SPAN, PROT_READ | PROT_WRITE, MAP_SHARED,
               fd, PL_CONTROL_GPIO_BASE);
    if (map == MAP_FAILED) {
        fprintf(stderr, "mmap PL control GPIO 0x%08lx failed: %s\n",
                PL_CONTROL_GPIO_BASE, strerror(errno));
        close(fd);
        return -1;
    }

    reg = (volatile uint32_t *)map;
    *reg = value;
    printf("PL control GPIO 0x%08lx <= 0x%08x\n",
           PL_CONTROL_GPIO_BASE, value);

    munmap(map, PL_CONTROL_GPIO_SPAN);
    close(fd);
    return 0;
}

/* --------------------------------------------------------------------------
 * Global variables (same as original main.c)
 * -------------------------------------------------------------------------- */
XRFdc  RFdcInst;
XRFdc_DSA_Settings DSA_Settings;
u32 Status;
XRFdc_IPStatus ipStatus;

/* Output current range: 2250–40500 (one per DAC slice, 8 total) */
uint32_t uACurrent[8] = {40500, 40500, 40500, 40500, 40500, 40500, 40500, 40500};

uint32_t Tile_Id, Block_Id;
uint64_t ADC_FS, DAC_FS;
XRFdc_Mixer_Settings Mixer_Settings;
double   Mixer_ADC_NCO_Freq;
double   Mixer_DAC_NCO_Freq;
uint32_t dac_nco_nyquist, adc_nco_nyquist;
uint32_t BaseSampleFreq;

extern spi_device lmk04828_spi;

/* --------------------------------------------------------------------------
 * main
 * -------------------------------------------------------------------------- */
int main(int argc, char *argv[])
{
    u32 ReadbackNyquistZone;
    XRFdc_Mixer_Settings ReadbackMixerSettings;

    /* ------------------------------------------------------------------
 * CLI arguments:
 *   -t N / --tiles N  (default 1, range 1-4)
 *     1  – single tile (current hardware has tile 0 only)
 *     4  – all tiles (requires Vivado IP with all 4 tiles + MTS enabled)
 *   --skip-mts
 *     Skip the MTS sequence entirely. This is the recommended bring-up mode
 *     when validating a single-tile bitstream or when the Vivado RFDC IP does
 *     not have MTS enabled.
 * ------------------------------------------------------------------ */
    static const struct option long_opts[] = {
        { "tiles", required_argument, NULL, 't' },
        { "skip-mts", no_argument, NULL, 'm' },
        { NULL,    0,                 NULL,  0  }
    };
    uint32_t num_tiles = 1;
    int skip_mts = 0;
    int opt;
    while ((opt = getopt_long(argc, argv, "t:m", long_opts, NULL)) != -1) {
        switch (opt) {
        case 't': {
            char *end;
            long v = strtol(optarg, &end, 10);
            if (*end != '\0' || v < 1 || v > 4) {
                fprintf(stderr, "Usage: %s [-t NUM_TILES] [--skip-mts]\n"
                        "  -t, --tiles N   tiles to configure (1-4, default 1)\n"
                        "      --skip-mts  skip multi-tile sync during bring-up\n",
                        argv[0]);
                return EXIT_FAILURE;
            }
            num_tiles = (uint32_t)v;
            break;
        }
        case 'm':
            skip_mts = 1;
            break;
        default:
            fprintf(stderr, "Usage: %s [-t NUM_TILES] [--skip-mts]\n"
                    "  -t, --tiles N   tiles to configure (1-4, default 1)\n"
                    "      --skip-mts  skip multi-tile sync during bring-up\n",
                    argv[0]);
            return EXIT_FAILURE;
        }
    }

    printf("**************************************************\n");
    printf("********antsdr T510 CH8 standalone test begin!*********\n");
    printf("**************************************************\n");
    printf("Please wait...\n");
    printf("Bring-up mode: tiles=%u, MTS=%s\n",
           num_tiles, skip_mts ? "disabled" : "enabled");

    /* ------------------------------------------------------------------
     * 1. Platform initialisation: GPIO (sysfs) + SPI (/dev/spidev)
     *
     * Abort on failure.  Running further after a failed platform_init()
     * will hit two follow-on problems:
     *   - every spi_write_and_read() prints "SPI device not open" and
     *     the LMK04828 is never actually programmed (MISO floats at 0xFF,
     *     which *looks* like a PLL lock but isn't);
     *   - XRFdc_* then touches /dev/mem at 0x80000000 with no RFDC clock,
     *     which stalls the PS<->PL interconnect and produces an
     *     "rcu_sched detected stalls" message in dmesg.
     * ------------------------------------------------------------------ */
    enable_metal_log();

    if (platform_init() != 0) {
        fprintf(stderr,
                "main: platform_init() failed; aborting before touching RFDC.\n"
                "  Check /sys/class/gpio/gpiochip*/label for the 'zynqmp_gpio'\n"
                "  entry and that /dev/spidev1.0 exists (ls /dev/spidev*).\n");
        return EXIT_FAILURE;
    }
    
    /* ------------------------------------------------------------------
     * 2. LMK04828 hardware reset sequence
     *    Original: GPIO_RESET assert (high=reset) 1 s, deassert (low), 1 s,
     *              then LMK_SYNC low to hold sync line inactive.
     * ------------------------------------------------------------------ */
    gpio_set_value(LMK_RESET, 1);
    mdelay(1000);
    gpio_set_value(LMK_RESET, 0);
    mdelay(1000);
    gpio_set_value(LMK_SYNC, 0);

    /* ------------------------------------------------------------------
     * 3. LMK04828 SPI register programming (245.76 MHz configuration)
     *    Polls PLL1 and PLL2 lock status; retries until both are locked.
     * ------------------------------------------------------------------ */
    lmk04828_config(&lmk04828_spi, 245.76e6);

    /* ------------------------------------------------------------------
     * 4. SYSREF in request mode
     *    (SYNC_MODE=0, SYSREF_MUX=2, SYSREF_REQ_EN=1)
     * ------------------------------------------------------------------ */
    printf("DBG: calling lmk04828_set_sysref_req_mode\n"); fflush(stdout);
    lmk04828_set_sysref_req_mode(&lmk04828_spi);
    printf("DBG: lmk04828_set_sysref_req_mode done\n"); fflush(stdout);

    /* ------------------------------------------------------------------
     * 5. RFDC initialisation (XRFdc_LookupConfig + XRFdc_CfgInitialize)
     *    The metal_stub.c metal_io_init() maps /dev/mem at 0x80000000.
     * ------------------------------------------------------------------ */
    printf("DBG: calling RFdcDcp_initial\n"); fflush(stdout);
    RFdcDcp_initial(&RFdcInst, RFDC_DEVICE_ID);
    printf("DBG: RFdcDcp_initial done\n"); fflush(stdout);

    if (write_pl_control_gpio(PL_CONTROL_GPIO_VALUE) != 0) {
        fprintf(stderr,
                "main: failed to set PL control GPIO to 0x%08x; aborting.\n"
                "  This replaces the manual: devmem 0x80050000 w 0x10\n",
                PL_CONTROL_GPIO_VALUE);
        return EXIT_FAILURE;
    }
	XRFdc_GetIPStatus(&RFdcInst, &ipStatus);

	printf("DAC Tile0 state = %d\n",
		ipStatus.DACTileStatus[0].TileState);

	printf("ADC Tile0 state = %d\n",
		ipStatus.ADCTileStatus[0].TileState);
    /* ------------------------------------------------------------------
     * 6. Reset all 4 ADC and 4 DAC tiles (as in the original)
     * ------------------------------------------------------------------ */
    for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {
        printf("DBG: XRFdc_Reset DAC tile %u\n", Tile_Id); fflush(stdout);
        XRFdc_Reset(&RFdcInst, XRFDC_DAC_TILE, Tile_Id);
        printf("DBG: XRFdc_Reset ADC tile %u\n", Tile_Id); fflush(stdout);
        XRFdc_Reset(&RFdcInst, XRFDC_ADC_TILE, Tile_Id);
        printf("DBG: tile %u done\n", Tile_Id); fflush(stdout);
    }
	
	/* Start DAC tile */
	Status = XRFdc_StartUp(&RFdcInst,
						   XRFDC_DAC_TILE,
						   Tile_Id);

	printf("XRFdc_StartUp DAC tile %d Status=%d\n",
		   Tile_Id,
		   Status);

	/* Start ADC tile */
	Status = XRFdc_StartUp(&RFdcInst,
						   XRFDC_ADC_TILE,
						   Tile_Id);

	printf("XRFdc_StartUp ADC tile %d Status=%d\n",
		   Tile_Id,
		   Status);
	usleep(50000);
    /* ------------------------------------------------------------------
     * 7. Read ADC and DAC sample rates from the initialised PLL settings
     * ------------------------------------------------------------------ */
    ADC_FS = (uint64_t)(RFdcInst.ADC_Tile[0].PLL_Settings.SampleRate * 1e9);
    printf("ADC converter samplerate=%ldHz\n", ADC_FS);
    DAC_FS = (uint64_t)(RFdcInst.DAC_Tile[0].PLL_Settings.SampleRate * 1e9);
    printf("DAC converter samplerate=%ldHz\n", DAC_FS);

    /* ------------------------------------------------------------------
     * 8. Configure DAC output power (VOP) + DSA attenuation + dither
     *    DSA_Settings.DisableRTS  = 1  (disable real-time scaling)
     *    DSA_Settings.Attenuation = 0  (0 dB)
     *    Dither enabled for all slices.
     * ------------------------------------------------------------------ */
    DSA_Settings.DisableRTS  = 1;
    DSA_Settings.Attenuation = 0;
    for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {
        for (Block_Id = 0; Block_Id < 2; Block_Id++) {
            /* Set DAC output current (VOP) */
            Status = XRFdc_SetDACVOP(&RFdcInst, Tile_Id, Block_Id * 2,
                                     uACurrent[Tile_Id * 2 + Block_Id]);
            printf("tile=%d,block=%d,XRFdc_SetDACVOP,Status=%d\n",
                   Tile_Id, Block_Id * 2, Status);
            /* Set DSA attenuation */
            Status = XRFdc_SetDSA(&RFdcInst, Tile_Id, Block_Id, &DSA_Settings);
            Status = XRFdc_GetDSA(&RFdcInst, Tile_Id, Block_Id, &DSA_Settings);
            /* Enable dither */
            Status = XRFdc_SetDither(&RFdcInst, Tile_Id, Block_Id, 1);
            printf("tile=%d,block=%d,Attenuation=%f,Status=%d\n",
                   Tile_Id, Block_Id, DSA_Settings.Attenuation, Status);
        }
    }

    /* ------------------------------------------------------------------
     * 9. DAC Nyquist zone and NCO mixer frequency
     *    Mixer_DAC_NCO_Freq = 1500 MHz
     *    If 1500e6 < DAC_FS/2 → Nyquist zone 1 (first),  freq positive
     *    Else                  → Nyquist zone 2 (second), freq negated
     * ------------------------------------------------------------------ */
    /* ------------------------------------------------------------------
	 * DAC mixer configuration
	 * DAC0 -> 1585 MHz
	 * DAC2 -> 1176 MHz
	 * ------------------------------------------------------------------ */
	for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {

		/* DAC Block 0 */
		Mixer_DAC_NCO_Freq = 1585.0;
		dac_nco_nyquist = 1;

		Status = XRFdc_SetNyquistZone(&RFdcInst,
									  XRFDC_DAC_TILE,
									  Tile_Id,
									  0,
									  dac_nco_nyquist);

		Status = XRFdc_ConfigMixer(&RFdcInst,
								   XRFDC_DAC_TILE,
								   Tile_Id,
								   0,
								   Mixer_DAC_NCO_Freq);

		printf("DAC Tile%d Block0 NCO = %.3f MHz\n",
			   Tile_Id,
			   Mixer_DAC_NCO_Freq);

		/* DAC Block 2 */
		Mixer_DAC_NCO_Freq = 1176.0;
		dac_nco_nyquist = 1;

		Status = XRFdc_SetNyquistZone(&RFdcInst,
									  XRFDC_DAC_TILE,
									  Tile_Id,
									  2,
									  dac_nco_nyquist);

		Status = XRFdc_ConfigMixer(&RFdcInst,
								   XRFDC_DAC_TILE,
								   Tile_Id,
								   2,
								   Mixer_DAC_NCO_Freq);

		printf("DAC Tile%d Block2 NCO = %.3f MHz\n",
			   Tile_Id,
			   Mixer_DAC_NCO_Freq);
	}

    /* ------------------------------------------------------------------
     * 10. ADC Nyquist zone and NCO mixer frequency
     *    Mixer_ADC_NCO_Freq = 1500 MHz
     *    NOTE: in the original code the condition uses DAC_FS (not ADC_FS)
     *    and negates the frequency for Nyquist zone 1.
     * ------------------------------------------------------------------ */
    /* ------------------------------------------------------------------
	 * ADC mixer configuration
	 * ADC0 -> 1585 MHz
	 * ADC1 -> 1176 MHz
	 * ------------------------------------------------------------------ */
	for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {

		/* ADC Block 0 */
		Mixer_ADC_NCO_Freq = 1585.0;
		adc_nco_nyquist = 1;

		Status = XRFdc_SetNyquistZone(&RFdcInst,
									  XRFDC_ADC_TILE,
									  Tile_Id,
									  0,
									  adc_nco_nyquist);

		Status = XRFdc_ConfigMixer(&RFdcInst,
								   XRFDC_ADC_TILE,
								   Tile_Id,
								   0,
								   Mixer_ADC_NCO_Freq);

		printf("ADC Tile%d Block0 NCO = %.3f MHz\n",
			   Tile_Id,
			   Mixer_ADC_NCO_Freq);

		/* ADC Block 1 */
		Mixer_ADC_NCO_Freq = 1176.0;
		adc_nco_nyquist = 1;

		Status = XRFdc_SetNyquistZone(&RFdcInst,
									  XRFDC_ADC_TILE,
									  Tile_Id,
									  1,
									  adc_nco_nyquist);

		Status = XRFdc_ConfigMixer(&RFdcInst,
								   XRFDC_ADC_TILE,
								   Tile_Id,
								   1,
								   Mixer_ADC_NCO_Freq);

		printf("ADC Tile%d Block1 NCO = %.3f MHz\n",
			   Tile_Id,
			   Mixer_ADC_NCO_Freq);
	}

    /* ------------------------------------------------------------------
     * 11. Base sample frequency, interpolation, and decimation factors
     *     BaseSampleFreq = 245.76 MHz
     *     intr_dec = ADC_FS / BaseSampleFreq
     * ------------------------------------------------------------------ */
    BaseSampleFreq = 245760000U;   /* 245.76e6 Hz */
    XRFdc_SetBaseSampleFreq(&RFdcInst, ADC_FS, BaseSampleFreq, num_tiles);

    /* ------------------------------------------------------------------
     * 12. ADC QMC configuration
     *     EnableGain = 1, GainCorrectionFactor = 1.99
     *     EventSource = XRFDC_EVNT_SRC_SYSREF
     *     Triggered via LMK_SYNC pulse
     * ------------------------------------------------------------------ */
    XRFdc_SetQMC(&RFdcInst, XRFDC_ADC_TILE, num_tiles);

    /* ------------------------------------------------------------------
     * 13. Multi-Tile Synchronisation (MTS) loop
     *     Retries up to MTS_MAX_RETRIES times.
     *
     *     MTS requires ALL of the following to be true in the Vivado
     *     RF Data Converter IP configuration:
     *       a) All participating tiles enabled (tiles 0-3 for DAC and ADC)
     *       b) MTS enabled in the IP (sets the DLY_ALIGNER registers)
     *
     *     If MTS is not configured in the bitstream, XRFdc_MultiConverter_Sync
     *     returns XRFDC_MTS_NOT_ENABLED (hardware register XRFDC_MTS_DLY_ALIGNER0
     *     reads 0) and retrying will never succeed.
     * ------------------------------------------------------------------ */
    if (skip_mts) {
        printf("MTS skipped for bring-up. Control-path validation completed.\n");
    } else {
        const int MTS_MAX_RETRIES = 3;
        u32 mts_status = 1;
        int mts_try;
        for (mts_try = 0; mts_try < MTS_MAX_RETRIES && mts_status; mts_try++) {
            mts_status = XRFdc_MTS_SYNC(&RFdcInst, &lmk04828_spi, num_tiles);
        }
        if (mts_status) {
            fprintf(stderr,
                    "MTS failed after %d attempts.\n"
                    "  Check Vivado RFDC IP settings:\n"
                    "    1. All tiles (0-3) must be enabled for both DAC and ADC.\n"
                    "       XRFdc_CheckTileEnabled reads hardware register\n"
                    "       XRFDC_TILES_ENABLED_OFFSET - currently only tile 0\n"
                    "       responds (tiles 1-3 are not instantiated in bitstream).\n"
                    "    2. MTS must be enabled in the IP (sets DLY_ALIGNER\n"
                    "       registers non-zero). Currently XRFDC_MTS_DLY_ALIGNER0\n"
                    "       reads 0 for all tiles, including tile 0.\n",
                    MTS_MAX_RETRIES);
        }
    }

    printf("Bring-up summary:\n");
    printf("  LMK configured over SPI\n");
    printf("  RFDC initialised for %u tile(s)\n", num_tiles);
    printf("  ADC sample rate: %llu Hz\n", (unsigned long long)ADC_FS);
    printf("  DAC sample rate: %llu Hz\n", (unsigned long long)DAC_FS);
    printf("  DAC NCO: %.6f MHz, ADC NCO: %.6f MHz\n",
           Mixer_DAC_NCO_Freq, Mixer_ADC_NCO_Freq);
    printf("  DAC Nyquist zone: %u, ADC Nyquist zone: %u\n",
           dac_nco_nyquist, adc_nco_nyquist);
    printf("  Base sample frequency: %u Hz\n", BaseSampleFreq);
    printf("  MTS: %s\n", skip_mts ? "skipped" : "attempted");

    printf("**************************************************\n");
    printf("********antsdr T510 CH8 standalone test finsh!*********\n");
    printf("**************************************************\n");
    return 0;
}
