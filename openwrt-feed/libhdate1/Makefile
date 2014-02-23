
include $(TOPDIR)/rules.mk

PKG_NAME:=libhdate1
PKG_VERSION:=1.6.02
PKG_RELEASE:=1

PKG_SOURCE:=libhdate-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=@SF/libhdate
PKG_SHA1SUM:=7548f3014bcaf6138c8b0fde060fa614a6934140

PKG_BUILD_DIR:=$(BUILD_DIR)/libhdate-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk


define Package/libhdate1
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  TITLE:=YAML parser and emitter in C++
  URL:=http://code.google.com/p/yaml-cpp
endef

define Build/Configure
	$(call Build/Configure/Default,--disable-fpc --disable-gpc --disable-python --disable-ruby --disable-php --disable-perl --disable-hcal --enable-shared --disable-static)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_BUILD_DIR)/src/{hdate,hdatepp}.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/src/.libs/libhdate.{so,la} $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/src/.libs/libhdate.so.* $(1)/usr/lib/
endef


define Package/libhdate1/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/src/.libs/libhdate.so.* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libhdate1))
