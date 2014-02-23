
include $(TOPDIR)/rules.mk

PKG_NAME:=agocontrol
PKG_VERSION:=$(shell date +%Y%m%d)
PKG_VERSION:=20140211
PKG_RELEASE=$(shell date +%H%M%S)

PKG_SOURCE_VERSION:=1e7a74fd97cb4ce21ec965e3a091e264c6159c1c
PKG_SOURCE_VERSION:=master

PKG_SOURCE_URL:=http://agocontrol.com/agocontrol.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz



include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/agocontrol/default
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  URL:=http://www.agocontrol.com
endef

define Package/libagoclient
  $(call Package/agocontrol/default)
  TITLE:=libagoclient1.0
  DEPENDS:=+libjsoncpp +libuuid +libqpidmessaging2 +libqpidtypes1
endef

define Package/agocontrol-resolver
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-resolver
  DEPENDS:=+libyaml-cpp +libagoclient +libsqlite3 +boost-filesystem +boost-system
endef

define Package/agocontrol-rpc
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-rpc
  DEPENDS:=+libyaml-cpp +libagoclient +libsqlite3 +boost-filesystem +libpthread
endef

define Package/agocontrol-timer
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-timer
  DEPENDS:=+libagoclient +libhdate1
endef

define Package/agocontrol-datalogger
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-datalogger
  DEPENDS:=+libagoclient +boost-date_time
endef

CMAKE_OPTIONS += -DBUILD_AGOLUA="OFF"

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
	$(CP) $(PKG_BUILD_DIR)/core/rpc/agorpc #(1)/usr/bin
endef

define Package/agocontrol-timer/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/timer/agotimer #(1)/usr/bin
endef

define Package/agocontrol-datalogger/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/datalogger/agodatalogger #(1)/usr/bin
endef

$(eval $(call BuildPackage,libagoclient))
$(eval $(call BuildPackage,agocontrol-resolver))
$(eval $(call BuildPackage,agocontrol-rpc))
$(eval $(call BuildPackage,agocontrol-timer))
$(eval $(call BuildPackage,agocontrol-datalogger))
