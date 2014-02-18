#
# Copyright (C) 2008-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libjsoncpp
PKG_VERSION:=0.5.0
PKG_RELEASE:=1

PKG_SOURCE:=jsoncpp-src-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@SF/jsoncpp
PKG_SHA1SUM:=7169a50c7615070b6190076a7b5e86c45b7440b7

PKG_BUILD_DIR:=$(BUILD_DIR)/jsoncpp-src-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk


define Package/libjsoncpp
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  TITLE:=jsoncpp
  DEPENDS:=+libstdcpp
  URL:=http://jsoncpp.sf.net
endef
#. /home/jeroen/dev/openwrt/include/shell.sh; gzip -dc /home/jeroen/dev/openwrt/dl/jsoncpp-src-0.5.0.tar.gz | /bin/tar -C /home/jeroen/dev/openwrt/build_dir/target-mips_34kc_uClibc-0.9.33.2/jsoncpp-src-0.5.0/.. -xf -

define Build/Prepare

	. $(INCLUDE_DIR)/shell.sh
	gzip -dc $(DL_DIR)/$(PKG_SOURCE) | $(TAR) -C $(BUILD_DIR) -xf -
	cd $(PKG_BUILD_DIR) && $(PATCH) -p0 < $(SOURCE)/patches/cmake_support.patch
endef

define Build/InstallDev
	mkdir -p $(1)/usr/lib
	$(LN) -sf libjsoncpp.so.0 $(1)/usr/lib/libjsoncpp.so
endef


define Package/libjsoncpp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libjson_cpp.so.$(PKG_VERSION) $(1)/usr/lib/libjsoncpp.so.$(PKG_VERSION)
	$(LN) -sf libjsoncpp.so.$(PKG_VERSION) $(1)/usr/lib/libjsoncpp.so.0
endef


$(eval $(call BuildPackage,libjsoncpp))
