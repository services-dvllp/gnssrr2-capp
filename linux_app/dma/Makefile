ifneq ($(KERNELRELEASE),)
obj-m := t510_dma_stream.o
t510_dma_stream-y := t510_dma_loopback.o
else
KDIR ?= /lib/modules/$(shell uname -r)/build
PWD  := $(shell pwd)
CC   ?= gcc
CFLAGS_USER := -O2 -Wall -Wextra -std=gnu11
LDFLAGS_USER := -lm

.PHONY: all module user clean

all: module user

module:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

user: t510_dma_tool

t510_dma_tool: t510_dma_tool.c t510_dma_ioctl.h
	$(CC) $(CFLAGS_USER) -o $@ t510_dma_tool.c $(LDFLAGS_USER)

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
	rm -f t510_dma_tool
endif
