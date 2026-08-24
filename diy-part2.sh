#!/bin/bash

# 修改默认后台 IP 为 10.1.1.1 & 主机名为 360T7
sed -i 's/192.168.1.1/10.1.1.1/g' ./package/base-files/files/bin/config_generate
sed -i 's/hostname="ImmortalWrt"/hostname="360T7"/g' ./package/base-files/files/bin/config_generate
sed -i 's/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION="ImmortalWrt By IraXu $(date +%Y%m%d)"/g' ./package/base-files/files/etc/openwrt_release
# 移除会导致 6.6 内核编译报错的 conninfra 驱动源码包
rm -rf package/mtk/drivers/conninfra
