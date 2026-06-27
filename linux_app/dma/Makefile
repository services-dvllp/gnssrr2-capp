ifneq ($(KERNELRELEASE),)
MODULE_NAME ?= t510_dma_loopback
obj-m := $(MODULE_NAME).o
ifneq ($(MODULE_NAME),t510_dma_stream)
$(MODULE_NAME)-y := t510_dma_stream.o
endif
else
KDIR ?= /lib/modules/$(shell uname -r)/build
PWD  := $(shell pwd)
CC   ?= gcc
CFLAGS_USER := -O2 -Wall -Wextra -std=gnu11
LDFLAGS_USER := -lm
MODULE_NAME ?= t510_dma_loopback

.PHONY: all module user unload clean

all: module user

module:
	$(MAKE) -C $(KDIR) M=$(PWD) MODULE_NAME=$(MODULE_NAME) modules

user: t510_dma_tool

unload:
	-rmmod $(MODULE_NAME)
	-rmmod t510_dma_stream

t510_dma_tool: t510_dma_tool.c t510_dma_ioctl.h
	$(CC) $(CFLAGS_USER) -o $@ t510_dma_tool.c $(LDFLAGS_USER)

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) MODULE_NAME=$(MODULE_NAME) clean
	rm -f t510_dma_tool
endif
