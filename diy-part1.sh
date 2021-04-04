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
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#Clone  vssr
git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr

#passwall依赖及下载源码
git clone https://github.com/kenzok8/openwrt-packages.git
git clone https://github.com/kenzok8/small.git

#luci-app-ssr-plus下载源码
git clone https://github.com/maxlicheng/luci-app-ssr-plus.git
git rm --cached package/lean/luci-app-ssr-plus/ -r

#Clone OpenAppFilter source code
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
