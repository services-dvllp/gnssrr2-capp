/*
 * rtx_config.h - self-describing 512-byte capture/replay file header.
 *
 * IMPORTANT / PROVENANCE:
 *   The task specification refers to an "RTXconfigInfo" structure that the
 *   first 512 bytes of every data file must contain. No such structure (nor
 *   any 512-byte header) exists anywhere in this repository -- not in the v1
 *   tool (linux_app/dma/t510_dma_tool.c, which writes a bare int16 stream with
 *   no header), not in the v2 apps (linux_app/dma/v2/app/{rx,tx}_stream.c,
 *   which instead wrote a SEPARATE plain-text "--meta" file), and not in
 *   ssd-streaming.md / ssd-streaming.pdf. This structure is therefore DEFINED
 *   HERE for the first time, from the field list enumerated in the task
 *   (Mode, LO, BW, Fs, ADC bits, Gain -- per channel -- plus Log_duration,
 *   Start_offset, Auto_replay) and the tracking fields the task requires
 *   (final written byte count). Consequence: only files produced by THIS
 *   rx_stream carry a valid header; files from the old tools do not, and
 *   tx_stream's metadata-replay mode validates the magic before trusting it.
 *
 *   The IQ payload begins immediately after this 512-byte header. The frame
 *   layout it documents (frame = I0,Q0,I1,Q1 = 4 x int16 = 8 bytes) is the
 *   verified on-the-wire DMA format, taken from linux_app/dma/t510_dma_tool.c
 *   lines 32-38 (T510_FRAME_BYTES = 8, T510_FRAMES_PER_SEC = 122880000) and
 *   the top-level README.md "Expected sample format" section. It is NOT
 *   invented here.
 */
#ifndef RTX_CONFIG_H
#define RTX_CONFIG_H

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#define RTX_HEADER_BYTES   512u
#define RTX_MAGIC          0x32585452u   /* 'R''T''X''2' little-endian */
#define RTX_VERSION        1u

/*
 * Verified DMA IQ frame size: I0,Q0,I1,Q1 = 4 x int16 = 8 bytes per frame,
 * streamed at the per-channel complex sample rate. Source of truth:
 * linux_app/dma/t510_dma_tool.c:37 (T510_FRAME_BYTES 8) and the top-level
 * README.md. Used only to convert Start_offset_sec <-> a byte offset; it is
 * NOT used to reconfigure any hardware.
 */
#define RTX_FRAME_BYTES    8u

/* Hard-coded fallback defaults (see rx_stream/tx_stream CLI handling). */
#define RTX_DEFAULT_FS_HZ      122880000.0   /* 122.88 MSPS, verified design rate */
#define RTX_DEFAULT_LO_HZ_RX   (-1500000.0)  /* matches v2 rx_stream default */
#define RTX_DEFAULT_LO_HZ_TX   ( 1500000.0)  /* matches v2 tx_stream default */
#define RTX_DEFAULT_ADC_BITS   14u           /* 14-bit ADC, per repo docs */

/*
 * 512-byte file header. Field order is 8-byte members first, then 4-byte
 * members, then padding, so the layout has no implementation-defined interior
 * padding; the trailing reserved[] makes sizeof exactly RTX_HEADER_BYTES,
 * checked by the _Static_assert below. Written/read as a raw binary blob, so
 * producer and consumer must share this build (same arch/endianness -- the
 * board is the only target, aarch64 little-endian).
 */
typedef struct RTXconfigInfo {
    /* ---- 8-byte members (12 * 8 = 96 bytes) ---- */
    double   log_duration_sec;  /* Log_duration_sec (0 = until Ctrl+C / EOF)   */
    double   lo_hz;             /* LO_Hz                                        */
    double   lo_hz_2;           /* LO_Hz_2                                      */
    double   bw_hz;             /* BW_Hz   (stored only, not applied to HW)     */
    double   bw_hz_2;           /* BW_Hz_2 (stored only, not applied to HW)     */
    double   fs_hz;             /* Fs_Hz   (per-channel complex sample rate)    */
    double   fs_hz_2;           /* Fs_Hz_2                                      */
    double   gain;              /* Gain    (stored only, not applied to HW)     */
    double   gain_2;            /* Gain_2  (stored only, not applied to HW)     */
    double   start_offset_sec;  /* Start_offset_sec (tx replay; 0 for rx)       */
    uint64_t payload_bytes;     /* IQ bytes written/expected AFTER this header  */
    uint64_t capture_unixtime;  /* time(NULL) when the run started              */

    /* ---- 4-byte members (10 * 4 = 40 bytes) ---- */
    uint32_t magic;             /* RTX_MAGIC                                    */
    uint32_t version;           /* RTX_VERSION                                  */
    uint32_t header_bytes;      /* = RTX_HEADER_BYTES (512)                     */
    int32_t  mode;              /* Mode (stored only; semantics unspecified)    */
    uint32_t adc_bits;          /* ADC_bits                                     */
    uint32_t adc_bits_2;        /* ADC_bits_2                                   */
    uint32_t auto_replay;       /* Auto_replay (tx; 0/!0)                       */
    uint32_t frame_bytes;       /* = RTX_FRAME_BYTES (8)                        */
    uint32_t period_bytes;      /* DMA period size at run time (informational)  */
    uint32_t num_periods;       /* DMA ring depth at run time (informational)   */

    /* ---- pad to exactly 512 bytes ---- */
    char     reserved[RTX_HEADER_BYTES - (96u + 40u)];
} RTXconfigInfo;

_Static_assert(sizeof(RTXconfigInfo) == RTX_HEADER_BYTES,
               "RTXconfigInfo must be exactly 512 bytes");

/* Initialise a header with the hard-coded fallback defaults. is_tx selects the
 * default LO sign (matching the v2 rx/tx defaults). */
static inline void rtx_config_set_defaults(RTXconfigInfo *c, int is_tx)
{
    memset(c, 0, sizeof(*c));
    c->magic        = RTX_MAGIC;
    c->version      = RTX_VERSION;
    c->header_bytes = RTX_HEADER_BYTES;
    c->frame_bytes  = RTX_FRAME_BYTES;
    c->mode         = 0;
    c->log_duration_sec = 0.0;
    c->lo_hz   = is_tx ? RTX_DEFAULT_LO_HZ_TX : RTX_DEFAULT_LO_HZ_RX;
    c->lo_hz_2 = c->lo_hz;
    c->bw_hz   = 0.0;
    c->bw_hz_2 = 0.0;
    c->fs_hz   = RTX_DEFAULT_FS_HZ;
    c->fs_hz_2 = RTX_DEFAULT_FS_HZ;
    c->gain    = 0.0;
    c->gain_2  = 0.0;
    c->adc_bits   = RTX_DEFAULT_ADC_BITS;
    c->adc_bits_2 = RTX_DEFAULT_ADC_BITS;
    c->start_offset_sec = 0.0;
    c->auto_replay = 0u;
}

/* Write (or rewrite) the 512-byte header at the very start of fp. Used both to
 * lay the header down before streaming and to update payload_bytes at the end.
 * Returns 0 on success, -1 on error. Requires fp opened with write+seek
 * ("w+b"/"r+b"); not usable on a pipe. */
static inline int rtx_write_header(FILE *fp, const RTXconfigInfo *c)
{
    if (fseek(fp, 0L, SEEK_SET) != 0)
        return -1;
    if (fwrite(c, 1, sizeof(*c), fp) != sizeof(*c))
        return -1;
    if (fflush(fp) != 0)
        return -1;
    return 0;
}

/* Read the leading 512-byte header from fp into c (file position is left at the
 * start of the IQ payload, i.e. offset RTX_HEADER_BYTES). Returns 0 if a full
 * 512 bytes were read, -1 otherwise. The caller must check c->magic ==
 * RTX_MAGIC before trusting the contents. */
static inline int rtx_read_header(FILE *fp, RTXconfigInfo *c)
{
    if (fseek(fp, 0L, SEEK_SET) != 0)
        return -1;
    if (fread(c, 1, sizeof(*c), fp) != sizeof(*c))
        return -1;
    return 0;
}

#endif /* RTX_CONFIG_H */
