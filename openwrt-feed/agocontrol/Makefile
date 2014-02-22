
include $(TOPDIR)/rules.mk

PKG_NAME:=agocontrol
PKG_VERSION:=$(shell date +%Y%m%d)
PKG_VERSION:=2014-02-11
PKG_SOURCE_VERSION:=1e7a74fd97cb4ce21ec965e3a091e264c6159c1c
PKG_RELEASE=$(PKG_SOURCE_VERSION)

PKG_SOURCE_URL:=http://agocontrol.com/agocontrol.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz

#PKG_BUILD_REQUIRES:=libjsoncpp,libuuid

include $(INCLUDE_DIR)/package.mk

#define Package/agocontrol
#  SECTION:=agocontrol
#  CATEGORY:=AgoControl
#  TITLE:=agocontrol
#  DEPENDS:=+libjsoncpp +libyaml-cpp +libagoclient +libsqlite3
#  URL:=http://www.agocontrol.com
#endef

define Package/agocontrol-resolver
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  TITLE:=agocontrol-resolver
  DEPENDS:=+libjsoncpp +libyaml-cpp +libagoclient +libsqlite3
  URL:=http://www.agocontrol.com
endef

define Package/libagoclient
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  TITLE:=libagoclient1.0
  DEPENDS:=+libjsoncpp +libuuid +libqpidmessaging2 +libqpidtypes1
  URL:=http://www.agocontrol.com
endef

define Build/InstallDev
	mkdir -p $(1)/usr/include/agocontrol
	$(CP) $(PKG_INSTALL_DIR)/usr/include/agocontrol/* $(1)/usr/include/agocontrol
endef

define Package/agocontrol-resolver/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libqpidcommon.so.* $(1)/usr/lib/
endef

define Package/libagoclient/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libqpidmessaging.so.* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libagoclient))
$(eval $(call BuildPackage,agocontrol-resolver))
