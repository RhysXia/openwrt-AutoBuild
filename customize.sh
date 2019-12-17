#!/bin/bash

# 修改默认ip
sed -i 's/192.168.1.1/10.20.10.50/g' package/base-files/files/bin/config_generate

# 添加额外的插件和主题
cd package
mkdir openwrt-packages
cd openwrt-packages
# git clone --depth 1 https://github.com/Ameykyl/luci-app-koolproxyR
