
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
  TITLE:=implementation of a JSON reader and writer in C++
  DEPENDS:=+libstdcpp
  URL:=http://jsoncpp.sf.net
endef

define Build/Prepare
	. $(INCLUDE_DIR)/shell.sh
	gzip -dc $(DL_DIR)/$(PKG_SOURCE) | $(TAR) -C $(BUILD_DIR) -xf -
	cd $(PKG_BUILD_DIR) && $(PATCH) -p0 < $(SOURCE)/patches/cmake_support.patch
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/jsoncpp/json
	$(CP) $(PKG_INSTALL_DIR)/usr/include/json/{autolink,config,features,forwards,json,reader,value,version,writer}.h $(1)/usr/include/jsoncpp/json/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libjsoncpp.so* $(1)/usr/lib
endef


define Package/libjsoncpp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libjsoncpp.so* $(1)/usr/lib
endef


$(eval $(call BuildPackage,libjsoncpp))
