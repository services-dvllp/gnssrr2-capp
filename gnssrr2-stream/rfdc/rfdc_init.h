/*
 * rfdc_init.h
 *
 * Public interface to the vendored RFDC bring-up sequence (rfdc_init.c,
 * refactored from linux_app/main_linux.c). rx_stream and tx_stream call
 * rfdc_init() once at startup so the RFDC/LMK clocks, tiles, NCO mixers,
 * QMC, etc. are configured in-process, instead of relying on the user
 * running the standalone `t510_rf_init` tool beforehand.
 */
#ifndef RFDC_INIT_H
#define RFDC_INIT_H

/*
 * Run the full ANTSDR T510 CH8 RFDC bring-up sequence.
 *
 *   num_tiles_arg : number of converter tiles to configure (1-4). Values
 *                   outside that range fall back to 1, matching main_linux.c's
 *                   original default and its -t validation.
 *   skip_mts_arg  : non-zero skips the Multi-Tile Synchronisation loop
 *                   (the original --skip-mts flag).
 *
 * Returns 0 on success, non-zero (EXIT_FAILURE) if platform_init() fails
 * (GPIO/SPI not accessible). Mirrors the return value of main_linux.c's main().
 *
 * Requires root (touches /dev/mem, /dev/spidev, /sys/class/gpio).
 */
int rfdc_init(int num_tiles_arg, int skip_mts_arg);

/*
 * Configuration used by rx_stream / tx_stream when they call rfdc_init().
 *
 * These match invoking the standalone tool as `t510_rf_init -t 1 --skip-mts`,
 * which is the documented single-tile bring-up in linux_app/dma/README.md.
 * main_linux.c's own comments state the current bitstream instantiates tile 0
 * only and that MTS cannot succeed on it (XRFDC_MTS_DLY_ALIGNER0 reads 0), so
 * enabling MTS here would only emit a guaranteed failure message plus retry
 * delay without changing the single-tile capture/replay configuration. Change
 * RFDC_INIT_SKIP_MTS to 0 and RFDC_INIT_NUM_TILES to 4 if a future bitstream
 * instantiates all four tiles with MTS enabled.
 */
#ifndef RFDC_INIT_NUM_TILES
#define RFDC_INIT_NUM_TILES 1
#endif
#ifndef RFDC_INIT_SKIP_MTS
#define RFDC_INIT_SKIP_MTS 1
#endif

#endif /* RFDC_INIT_H */
