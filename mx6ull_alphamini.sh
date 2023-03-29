#!/bin/bash
CROSS_COMPILE=arm-linux-gnueabihf-
export CROSS_COMPILE
make distclean
make mx6ull_alphamini_defconfig
make
sudo dd if=u-boot-dtb.imx of=/dev/sdb bs=1K seek=1 && sync
