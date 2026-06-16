KDIR ?= /lib/modules/$(shell uname -r)/build
PWD  := $(shell pwd)
CC   ?= gcc
CFLAGS_USER := -O2 -Wall -Wextra -std=gnu11
LDFLAGS_USER := -lm

.PHONY: all clean

all: rx_stream tx_stream

IOCTL_HDR_DIR := ../driver

rx_stream: rx_stream.c $(IOCTL_HDR_DIR)/t510_dma_stream_ioctl.h
	$(CC) $(CFLAGS_USER) -I$(IOCTL_HDR_DIR) -o $@ rx_stream.c $(LDFLAGS_USER)

tx_stream: tx_stream.c $(IOCTL_HDR_DIR)/t510_dma_stream_ioctl.h
	$(CC) $(CFLAGS_USER) -I$(IOCTL_HDR_DIR) -o $@ tx_stream.c $(LDFLAGS_USER)

clean:
	rm -f rx_stream tx_stream
