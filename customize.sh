#!/bin/bash

# 修改默认ip
sed -i 's/192.168.1.1/10.10.20.20/g' package/base-files/files/bin/config_generate
sed -i 's/set network.$1.netmask=\'$netm\'/set network.$1.netmask=\'$netm\'\n\tset network.$1.gateway=\'10.10.20.1\'\n\tset network.$1.dns=\'10.10.20.10\'/g' package/base-files/files/bin/config_generate

cat package/base-files/files/bin/config_generate

# 添加额外的插件和主题
cd package
mkdir openwrt-packages
cd openwrt-packages
