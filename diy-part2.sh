#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

#Modify feeds/helloworld/simple-obfs/Makefile
sed -i 's/b1ae62a6826616b35b6aea0c6b2d55b5f36da96be0cd1c229c263b508d1aeef0/bc97eba511b86a089ab4bcf0ac78d9e4a39c59046d5cde77b79a118245daa0ba/g' feeds/helloworld/simple-obfs/Makefile

#Creat file tmp/libc.version
echo "~1.2.5" >tmp/libc.version


