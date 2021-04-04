#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

#Clone SSRPlus source code
git clone https://github.com/fw876/helloworld package/SSRPlus
#git lua-maxminddb 依赖
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#Clone  vssr
git clone https://github.com/siropboy/luci-app-vssr-plus.git package/luci-app-vssr-plus

#passwall依赖及下载源码
git clone https://github.com/esirplayground/Lienol-obsolete/tree/master/luci-app-passwall.git package/luci-app-passwall

#luci-app-ssr-plus依赖包下载源码
#git clone https://github.com/romantices/luci-app-ssr-plus-jo-1.git package/luci-app-ssr-plus
git clone https://github.com/esirplayground/Lean-obsolete/tree/master/luci-app-ssr-plus.git package/luci-app-ssr-plus

#luci-app-v2ray-server
git clone https://github.com/esirplayground/luci-app-v2ray-server.git package/luci-app-v2ray-server

#Clone OpenAppFilter source code
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter

#ipk全固件
git clone https://github.com/liuran001/openwrt-packages.git package/openwrt-packages
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

#Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git liuran001_packages https://github.com/liuran001/openwrt-packages' feeds.conf.default
