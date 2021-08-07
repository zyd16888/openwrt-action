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

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# 第三方插件
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git OpenWrt-packages https://github.com/OpenWrt-Actions/OpenWrt-Packages' feeds.conf.default
# git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
# git clone https://github.com/OpenWrt-Actions/helloworld.git package/helloworld
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone https://github.com/OpenWrt-Actions/OpenWrt-Packages.git package/OpenWrt-Packages
# git clone https://github.com/maxlicheng/luci-app-unblockmusic.git package/luci-app-unblockmusic
# git clone https://github.com/pymumu/smartdns.git package/smartdns
# git clone https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# 主题
# sed -i '$a src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' feeds.conf.default
# git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/lean/luci-theme-opentomcat

# src-git packages https://github.com/coolsnowwolf/packages
# src-git luci https://github.com/coolsnowwolf/luci
# src-git routing https://git.openwrt.org/feed/routing.git
# src-git telephony https://git.openwrt.org/feed/telephony.git
# #src-git video https://github.com/openwrt/video.git
# #src-git targets https://github.com/openwrt/targets.git
# #src-git management https://github.com/openwrt-management/packages.git
# #src-git oldpackages http://git.openwrt.org/packages.git
# #src-link custom /usr/src/openwrt/custom-feed
# #src-git helloworld https://github.com/fw876/helloworld
# src-git lienol https://github.com/Lienol/openwrt-package