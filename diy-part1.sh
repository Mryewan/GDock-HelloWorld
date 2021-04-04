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
cd lede/package/lean/  

git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb

git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr-plus

make menuconfig

make -j1 V=s 
#Clone  vssr
#git clone https://github.com/siropboy/luci-app-vssr-plus.git package/luci-app-vssr-plus

#passwall依赖及下载源码
git clone https://github.com/yiguihai/luci-app-passwall-plus.git package/luci-app-passwall-plus

#luci-app-ssr-plus依赖包下载源码
#git clone https://github.com/romantices/luci-app-ssr-plus-jo-1.git package/luci-app-ssr-plus
#源码根目录，编辑.gitignore文件
vi .gitignore
#在文件最后一行，加入
git rm --cached package/lean/luci-app-ssr-plus/ -r
#保存后，进入lean源码目录
cd package/lean/
#下载源码
git clone https://github.com/maxlicheng/luci-app-ssr-plus.git package/luci-app-ssr-plus
#回到源码根目录
cd ../..
#拉取源码
git pull

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
