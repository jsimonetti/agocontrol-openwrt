
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

include $(INCLUDE_DIR)/package.mk

define Package/libagoclient
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  TITLE:=libagoclient1.0
  DEPENDS:=+libjsoncpp +libuuid +libqpidmessaging2 +libqpidtypes1
  URL:=http://www.agocontrol.com
endef

define Package/agocontrol-resolver
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  TITLE:=agocontrol-resolver
  DEPENDS:=+libjsoncpp +libyaml-cpp +libagoclient +libsqlite3 +boost-filesystem
  URL:=http://www.agocontrol.com
endef

define Package/agocontrol-rpc
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  TITLE:=agocontrol-rpc
  DEPENDS:=+libjsoncpp +libyaml-cpp +libagoclient +libsqlite3 +boost-filesystem
  URL:=http://www.agocontrol.com
endef

#define Build/InstallDev
#	mkdir -p $(1)/usr/include/agocontrol
#	$(CP) $(PKG_INSTALL_DIR)/usr/include/agocontrol/* $(1)/usr/include/agocontrol
#endef

define Package/libagoclient/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/shared/libagoclient.so* $(1)/usr/lib
endef

define Package/agocontrol-resolver/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/resolver/agoresolver #(1)/usr/bin
endef

define Package/agocontrol-rpc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/resolver/agorpc #(1)/usr/bin
endef

$(eval $(call BuildPackage,libagoclient))
$(eval $(call BuildPackage,agocontrol-resolver))
$(eval $(call BuildPackage,agocontrol-rpc))
