/*
 * rfdc_main.c - standalone `t510_rf_init` entry point.
 *
 * Thin wrapper that restores main_linux.c's original -t / --skip-mts command
 * line around the shared rfdc_init() function (rfdc_init.c). This builds the
 * standalone bring-up tool (build/t510_rf_init) so the exact same RFDC
 * initialisation that rx_stream / tx_stream run in-process is also available
 * as a separate command, identical in behaviour to the original
 * linux_app t510_rf_init.
 */
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>

#include "rfdc_init.h"

static void usage(const char *prog)
{
    fprintf(stderr,
            "Usage: %s [-t NUM_TILES] [--skip-mts]\n"
            "  -t, --tiles N   tiles to configure (1-4, default 1)\n"
            "      --skip-mts  skip multi-tile sync during bring-up\n",
            prog);
}

int main(int argc, char *argv[])
{
    static const struct option long_opts[] = {
        { "tiles",    required_argument, NULL, 't' },
        { "skip-mts", no_argument,       NULL, 'm' },
        { NULL,       0,                 NULL,  0  }
    };
    int num_tiles = 1;
    int skip_mts = 0;
    int opt;

    while ((opt = getopt_long(argc, argv, "t:m", long_opts, NULL)) != -1) {
        switch (opt) {
        case 't': {
            char *end;
            long v = strtol(optarg, &end, 10);
            if (*end != '\0' || v < 1 || v > 4) {
                usage(argv[0]);
                return EXIT_FAILURE;
            }
            num_tiles = (int)v;
            break;
        }
        case 'm':
            skip_mts = 1;
            break;
        default:
            usage(argv[0]);
            return EXIT_FAILURE;
        }
    }

    return rfdc_init(num_tiles, skip_mts);
}
