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
 * Jun24 record/replay backend control blocks (AXI-Lite register files):
 *   RX (record_replay_ctrl_rx) @ 0x8006_0000  -> programmable_decim,
 *                                                iq_quantizer_vec, iq_bit_packer
 *   TX (record_replay_ctrl_tx) @ 0x8007_0000  -> iq_bit_unpacker_tx,
 *                                                programmable_interp_tx,
 *                                                iq_requant_tx, iq_tx_formatter
 *
 * These two blocks decide the on-the-wire DMA sample format.  Like the
 * 0x8005_0000 GPIO they POWER UP / reset to a known-good default, but the
 * silicon keeps whatever a *previous* run (or a stray devmem) last wrote until
 * the PL is reloaded.  t510_rf_init previously only reset the GPIO, so a stale
 * BIT_MODE/QUANT_SHIFT left over from the record/replay firmware would survive
 * into a fresh capture.
 *
 * The DMA capture tool and CSV/bin format are defined for 16-bit dual-band,
 * undecimated samples: one DMA frame = I0,Q0,I1,Q1 = 4 x int16 = 8 bytes
 * (Output_Width 16, Number_Paths 4).  If the RX quantiser is left in 8-bit
 * mode it emits 4 x int8 = 4 bytes per frame instead; the tool then reads two
 * packed 8-bit samples as one int16 word, which splices an I byte and a Q byte
 * together.  That is exactly what makes Q appear at twice the frequency of I
 * and stops the I/Q pair looking orthogonal.  A stale TX BIT_MODE corrupts the
 * unpacker the same way, so the looped-back tone no longer tracks the
 * transmitted waveform.
 *
 * Programming both blocks to the documented 16-bit, dual-band, no-extra-decim,
 * unity-shift configuration makes the capture deterministic and matches the
 * tool/README contract regardless of prior PL state.  Register offsets and
 * bit positions are taken directly from sdr2cl/sdr2/hdl/record_replay_ctrl_*.v.
 * -------------------------------------------------------------------------- */
#define RR_CTRL_SPAN          0x1000UL

#define RR_RX_CTRL_BASE       0x80060000UL
#define RR_TX_CTRL_BASE       0x80070000UL

/* Register offsets common to both RX and TX control blocks */
#define RR_REG_CTRL           0x000U   /* [2]=SOFT_RESET [4]=COUNT_CLR */
#define RR_REG_BAND_MODE      0x008U   /* [1]=BAND_DUAL (1=dual, 0=single) */
#define RR_REG_RATE_M         0x050U   /* RX: DECIM_M     TX: INTERP_M   */
#define RR_REG_RATE_PHASE     0x054U   /* RX: DECIM_PHASE TX: INTERP_PHASE */
#define RR_REG_BIT_MODE       0x070U   /* [1:0] 00=16-bit 01=8-bit 10=4-bit 11=2-bit */
#define RR_REG_SHIFT          0x074U   /* RX: QUANT_SHIFT TX: SCALE_SHIFT */

#define RR_CTRL_SOFT_RESET    (1U << 2)
#define RR_CTRL_COUNT_CLR     (1U << 4)

/* TX-only register: iq_requant_tx clip limit (0x078, [13:0]); HDL default. */
#define RR_TX_REG_LIMIT       0x078U
#define RR_TX_LIMIT_DEFAULT   8192U

#define RR_BAND_DUAL          0x2U     /* band_mode bit1 set -> dual-band */
#define RR_BIT_MODE_16        0x0U     /* 16-bit pass-through quantiser   */
#define RR_RATE_NONE          0x1U     /* M=1 -> no extra PL decim/interp */

static int reset_rr_ctrl_block(const char *name, unsigned long base, int is_tx)
{
    int fd;
    void *map;
    volatile uint8_t *regs;

    fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        fprintf(stderr, "open(/dev/mem) for %s control block failed: %s\n",
                name, strerror(errno));
        return -1;
    }

    map = mmap(NULL, RR_CTRL_SPAN, PROT_READ | PROT_WRITE, MAP_SHARED, fd, base);
    if (map == MAP_FAILED) {
        fprintf(stderr, "mmap %s control block 0x%08lx failed: %s\n",
                name, base, strerror(errno));
        close(fd);
        return -1;
    }
    regs = (volatile uint8_t *)map;

#define RR_WR(off, val) (*(volatile uint32_t *)(regs + (off)) = (uint32_t)(val))

    /* Format/rate first, then flush the datapath so the new settings take
     * effect on clean pipeline state. */
    RR_WR(RR_REG_BAND_MODE, RR_BAND_DUAL);
    RR_WR(RR_REG_RATE_M,    RR_RATE_NONE);
    RR_WR(RR_REG_RATE_PHASE, 0U);
    RR_WR(RR_REG_BIT_MODE,  RR_BIT_MODE_16);
    RR_WR(RR_REG_SHIFT,     0U);
    if (is_tx)
        RR_WR(RR_TX_REG_LIMIT, RR_TX_LIMIT_DEFAULT);  /* avoid a stale TX clip */
    /* SOFT_RESET (self-clearing 32-cycle pulse) + COUNT_CLR */
    RR_WR(RR_REG_CTRL, RR_CTRL_SOFT_RESET | RR_CTRL_COUNT_CLR);
    RR_WR(RR_REG_CTRL, 0U);

#undef RR_WR

    printf("%s backend 0x%08lx <= 16-bit dual-band, M=1, shift=0 (soft reset)\n",
           name, base);

    munmap(map, RR_CTRL_SPAN);
    close(fd);
    return 0;
}

/* Reset both record/replay control blocks to the documented 16-bit format. */
static int init_record_replay_backend(void)
{
    int rc = 0;
    rc |= reset_rr_ctrl_block("RX", RR_RX_CTRL_BASE, 0);
    rc |= reset_rr_ctrl_block("TX", RR_TX_CTRL_BASE, 1);
    return rc;
}

/* --------------------------------------------------------------------------
 * Global variables (same as original main.c)
 * -------------------------------------------------------------------------- */
XRFdc  RFdcInst;
XRFdc_DSA_Settings DSA_Settings;
u32 Status;

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
    /* ------------------------------------------------------------------
     * CLI argument: -t N / --tiles N  (default 1, range 1-4)
     *   1  – single tile (current hardware has tile 0 only)
     *   4  – all tiles (requires Vivado IP with all 4 tiles + MTS enabled)
     * ------------------------------------------------------------------ */
    static const struct option long_opts[] = {
        { "tiles", required_argument, NULL, 't' },
        { NULL,    0,                 NULL,  0  }
    };
    uint32_t num_tiles = 1;
    int opt;
    while ((opt = getopt_long(argc, argv, "t:", long_opts, NULL)) != -1) {
        switch (opt) {
        case 't': {
            char *end;
            long v = strtol(optarg, &end, 10);
            if (*end != '\0' || v < 1 || v > 4) {
                fprintf(stderr, "Usage: %s [-t NUM_TILES]\n"
                        "  -t, --tiles N   tiles to configure (1-4, default 1)\n",
                        argv[0]);
                return EXIT_FAILURE;
            }
            num_tiles = (uint32_t)v;
            break;
        }
        default:
            fprintf(stderr, "Usage: %s [-t NUM_TILES]\n"
                    "  -t, --tiles N   tiles to configure (1-4, default 1)\n",
                    argv[0]);
            return EXIT_FAILURE;
        }
    }

    printf("**************************************************\n");
    printf("********antsdr T510 CH8 standalone test begin!*********\n");
    printf("**************************************************\n");
    printf("Please wait...\n");

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

    /* Reset the RX (0x80060000) and TX (0x80070000) record/replay backend
     * control blocks to the documented 16-bit dual-band format.  Without this
     * a stale BIT_MODE/QUANT_SHIFT (e.g. an 8-bit configuration left by the
     * record/replay firmware) makes the DMA tool misread packed 8-bit samples
     * as 16-bit words, scrambling the I/Q pair (Q appears at 2x the I
     * frequency and the pair is no longer orthogonal). */
    if (init_record_replay_backend() != 0) {
        fprintf(stderr,
                "main: failed to program record/replay backend control blocks;\n"
                "  captures may be in a stale (e.g. 8-bit) format. Aborting.\n");
        return EXIT_FAILURE;
    }

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
    Mixer_DAC_NCO_Freq = 1501.2;
    if (Mixer_DAC_NCO_Freq * 1e6 < (double)DAC_FS / 2.0)
        dac_nco_nyquist = 1;
    else {
        dac_nco_nyquist   = 2;
        Mixer_DAC_NCO_Freq = -Mixer_DAC_NCO_Freq;
    }
    for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {
        for (Block_Id = 0; Block_Id < 2; Block_Id++) {
            Status = XRFdc_SetNyquistZone(&RFdcInst, XRFDC_DAC_TILE, Tile_Id,
                                          Block_Id * 2, dac_nco_nyquist);
            if (Status != XST_SUCCESS)
                printf("Tile_Id=%d,Block_Id=%d,XRFdc_SetNyquistZone fail\n",
                       Tile_Id, Block_Id * 2);
            Status = XRFdc_ConfigMixer(&RFdcInst, XRFDC_DAC_TILE, Tile_Id,
                                       Block_Id * 2, (Mixer_DAC_NCO_Freq+Block_Id));
            if (Status != XST_SUCCESS)
                printf("Tile_Id=%d,Block_Id=%d,XRFdc_ConfigMixer fail\n",
                       Tile_Id, Block_Id);
            printf("DAC NCO frequency of Tile#%d Block%d is set to %f\n",
                   Tile_Id, Block_Id, Mixer_DAC_NCO_Freq);
        }
    }

    /* ------------------------------------------------------------------
     * 10. ADC Nyquist zone and NCO mixer frequency
     *    Mixer_ADC_NCO_Freq = 1500 MHz
     *    NOTE: in the original code the condition uses DAC_FS (not ADC_FS)
     *    and negates the frequency for Nyquist zone 1.
     * ------------------------------------------------------------------ */
    Mixer_ADC_NCO_Freq = 1500.0;
    if (Mixer_ADC_NCO_Freq * 1e6 < (double)DAC_FS / 2.0) {
        adc_nco_nyquist   = 1;
        Mixer_ADC_NCO_Freq = -Mixer_ADC_NCO_Freq;
    } else {
        adc_nco_nyquist   = 2;
        /* Mixer_ADC_NCO_Freq = Mixer_ADC_NCO_Freq; (no change, as in original) */
    }
    for (Tile_Id = 0; Tile_Id < num_tiles; Tile_Id++) {
        for (Block_Id = 0; Block_Id < 2; Block_Id++) {
            Status = XRFdc_SetNyquistZone(&RFdcInst, XRFDC_ADC_TILE, Tile_Id,
                                          Block_Id, adc_nco_nyquist);
            if (Status != XST_SUCCESS)
                printf("Tile_Id=%d,Block_Id=%d,XRFdc_SetNyquistZone fail\n",
                       Tile_Id, Block_Id);
            Status = XRFdc_ConfigMixer(&RFdcInst, XRFDC_ADC_TILE, Tile_Id,
                                       Block_Id, Mixer_ADC_NCO_Freq);
            if (Status != XST_SUCCESS)
                printf("Tile_Id=%d,Block_Id=%d,XRFdc_ConfigMixer fail\n",
                       Tile_Id, Block_Id);
            printf("ADC NCO frequency of Tile#%d Block%d is set to %f\n",
                   Tile_Id, Block_Id, Mixer_ADC_NCO_Freq);
        }
    }

    /* ------------------------------------------------------------------
     * 11. Base sample frequency, interpolation, and decimation factors
     *     BaseSampleFreq = 122.88 MHz
     *     intr_dec = ADC_FS / BaseSampleFreq = 4915.2 / 122.88 = 40
     *     The PL fabric is built for factor 40 (block design
     *     ADC_Decimation_Mode00/02 = DAC_Interpolation_Mode00/02 = 40,
     *     ADC streams 8 samples/beat at 15.36 MHz, DAC streams
     *     8 samples/beat at 30.72 MHz).  245.76 MHz here programmed
     *     factor 20, doubling the converter datapath rate against the
     *     fixed fabric clocks: ADC FIFO overflow / DAC FIFO underflow.
     * ------------------------------------------------------------------ */
    BaseSampleFreq = 122880000U;   /* 122.88e6 Hz */
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
     *     Skipped in single-tile mode (num_tiles == 1): MTS requires all
     *     participating tiles to be instantiated and MTS-enabled in the
     *     Vivado RF Data Converter IP.  With only tile 0 present in the
     *     bitstream, XRFdc_MultiConverter_Sync always returns an error.
     *     In multi-tile mode (num_tiles > 1) the original retry logic runs
     *     unchanged.
     * ------------------------------------------------------------------ */
    if (num_tiles > 1) {
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

    printf("**************************************************\n");
    printf("********antsdr T510 CH8 standalone test finsh!*********\n");
    printf("**************************************************\n");
    return 0;
}
