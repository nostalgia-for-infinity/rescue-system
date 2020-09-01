#!/bin/bash -e

sudo ./tools/sunxi-fel -v list 

sudo ./tools/sunxi-fel -v -p uboot ./plilly/u-boot-sunxi-with-spl.bin \
             write 0x42000000 ./plilly/zImage \
             write 0x43000000 ./plilly/sun7i-a20-plilly.dtb \
             write 0x43100000 ./plilly/boot.scr \
	     write 0x43300000 ./plilly/rootfs.cpio.uboot
