
include $(TOPDIR)/rules.mk

PKG_NAME:=agocontrol
PKG_VERSION:=$(shell date +%Y%m%d)
PKG_RELEASE=$(shell date +%H%M%S)

PKG_SOURCE_VERSION:=HEAD

PKG_SOURCE_URL:=http://agocontrol.com/agocontrol.git
PKG_SOURCE_URL:=file:///home/jeroen/dev/agocontrol
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz


include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk


CMAKE_OPTIONS += -DCMAKE_BUILD_TYPE=RELEASE


define Package/agocontrol/default
  SUBMENU:=Core
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  URL:=http://www.agocontrol.com
endef


##
include agocore.mk
include devices/devices.mk
##


define Package/libagoclient
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  URL:=http://www.agocontrol.com
  TITLE:=libagoclient1.0
  DEPENDS:=+libjsoncpp +libuuid +libqpidmessaging2 +libqpidtypes1
endef

define Package/libagoclient/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libagoclient.so* $(1)/usr/lib
endef
#	/usr/include/agocontrol/agoclient.h
#	/usr/include/agocontrol/CDataFile.h

ifeq ($(CONFIG_PACKAGE_libagoclient),)
  CMAKE_OPTIONS += -DBUILD_SHARED=OFF
endif


##


define Package/agocontrol-common
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-common
endef

define Package/agocontrol-security/install
	$(INSTALL_DIR) $(1)/etc/opt/agocontrol/conf.d
	$(CP) $(PKG_INSTALL_DIR)/etc/opt/agocontrol/conf.d/system.conf $(1)/etc/opt/agocontrol/conf.d
	$(CP) $(PKG_INSTALL_DIR)/etc/opt/agocontrol/schema.yaml $(1)/etc/opt/agocontrol
	$(INSTALL_DIR) $(1)/var/opt/agocontrol
	$(CP) $(PKG_INSTALL_DIR)/var/opt/agocontrol/inventory.sql $(1)/var/opt/agocontrol
	$(CP) $(PKG_INSTALL_DIR)/var/opt/agocontrol/datalogger.sql $(1)/var/opt/agocontrol
	$(INSTALL_DIR) $(1)/opt/agocontrol/bin
	$(CP) $(PKG_INSTALL_DIR)/opt/agocontrol/bin/agodrain.py $(1)/opt/agocontrol/bin
	$(CP) $(PKG_INSTALL_DIR)/opt/agocontrol/bin/myavahi.py $(1)/opt/agocontrol/bin
	$(CP) $(PKG_INSTALL_DIR)/opt/agocontrol/bin/agoctrl.sh $(1)/opt/agocontrol/bin
	$(CP) $(PKG_INSTALL_DIR)/opt/agocontrol/bin/convert-config.sh $(1)/opt/agocontrol/bin
	$(CP) $(PKG_INSTALL_DIR)/opt/agocontrol/bin/agososreport.sh $(1)/opt/agocontrol/bin
	$(INSTALL_DIR) $(1)/etc/security/limits.d/agocontrol.conf
	$(CP) $(PKG_INSTALL_DIR)/etc/security/limits.d/agocontrol.conf/security-limits.conf $(1)/etc/security/limits.d/agocontrol.conf
	$(INSTALL_DIR) $(1)/etc/sysctl.d/agocontrol.conf/
	$(CP) $(PKG_INSTALL_DIR)/etc/sysctl.d/agocontrol.conf/sysctl.conf $(1)/etc/sysctl.d/agocontrol.conf
endef


##

$(eval $(call BuildPackage,libagoclient))
$(eval $(call BuildPackage,agocontrol-common))

#
include calls.mk
include devices/calls.mk
#
