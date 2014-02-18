
include $(TOPDIR)/rules.mk

PKG_NAME:=qpid-cpp
PKG_VERSION:=0.24
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://apache.cs.uu.nl/dist/qpid/$(PKG_VERSION)
PKG_SHA1SUM:=a1449cdb5b6319f0c0e47a47fbd97d539e79804d

PKG_BUILD_DEPENDS:=boost-test
PKG_BUILD_DIR:=$(BUILD_DIR)/qpidc-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk


define Package/libqpidbroker2
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  SUBMENU:=Qpid
  TITLE:=libqpidbroker2
  DEPENDS:=+libqpidcommon2 +libstdcpp
  URL:=http://qpid.apache.org
endef

define Package/libqpidclient2
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  SUBMENU:=Qpid
  TITLE:=libqpidclient2
  DEPENDS:=+libqpidcommon2 +libstdcpp +libuuid
  URL:=http://qpid.apache.org
endef

define Package/libqpidcommon2
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  SUBMENU:=Qpid
  TITLE:=libqpidcommon2
  DEPENDS:=+boost-program_options +boost-system +libqpidtypes1 +libuuid +libstdcpp
  URL:=http://qpid.apache.org
endef

define Package/libqpidmessaging2
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  SUBMENU:=Qpid
  TITLE:=libqpidmessaging2
  DEPENDS:=+libqpidclient2 +libqpidtypes1 +libstdcpp
  URL:=http://qpid.apache.org
endef

define Package/libqpidtypes1
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  SUBMENU:=Qpid
  TITLE:=libqpidtypes1
  DEPENDS:=+libuuid +libstdcpp +boost-system +libpthread
  URL:=http://qpid.apache.org
endef

define Package/qpidd
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  SUBMENU:=Qpid
  TITLE:=qpidd
  DEPENDS:=+boost-program_options +libqpidbroker2 +libqpidclient2 +libqpidcommon2 +libqpidmessaging2 +boost-test
  URL:=http://qpid.apache.org
endef

define Package/qpidd/conffiles
/etc/config/qpidd.conf
/etc/config/qpidc.conf
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) qpidtypes
	$(MAKE) -C $(PKG_BUILD_DIR) qpidcommon
	$(MAKE) -C $(PKG_BUILD_DIR) qpidmessaging
	$(MAKE) -C $(PKG_BUILD_DIR) qpidclient
	$(MAKE) -C $(PKG_BUILD_DIR) qpidbroker
	$(MAKE) -C $(PKG_BUILD_DIR) qpidd
endef

define Build/InstallDev
	mkdir -p $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/qpid $(1)/usr/include/
	mkdir -p $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/qpid $(1)/usr/include/
	mkdir -p $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef


define Package/libqpidbroker2/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libqpidbroker.so.* $(1)/usr/lib/
endef

define Package/libqpidclient2/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libqpidclient.so.* $(1)/usr/lib/
endef

define Package/libqpidcommon2/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libqpidcommon.so.* $(1)/usr/lib/
endef

define Package/libqpidmessaging2/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libqpidmessaging.so.* $(1)/usr/lib/
endef

define Package/libqpidtypes1/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libqpidtypes.so.* $(1)/usr/lib/
endef

define Package/qpidd/install
	$(INSTALL_DIR) $(1)/usr/lib/qpid/daemon
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DIR) $(1)/etc/init.d
	$(CP) $(SOURCE)/qpidd.init $(1)/etc/init.d/qpidd
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/qpid/daemon/* $(1)/usr/lib/qpid/daemon/
	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/qpidd $(1)/usr/sbin/qpidd
	$(CP) $(PKG_INSTALL_DIR)/usr/etc/qpid/* $(1)/etc/config/
endef

define Package/qpidd/postinst
#!/bin/sh
# check if we are on real system
if [ -z "$${IPKG_INSTROOT}" ]; then
	echo "Enabling rc.d symlink for qpidd"
	/etc/init.d/qpidd enable
fi
exit 0
endef

define Package/qpidd/prerm
#!/bin/sh
# check if we are on real system
if [ -z "$${IPKG_INSTROOT}" ]; then
	echo "Removing rc.d symlink for qpidd"
	/etc/init.d/qpidd disable
fi
exit 0
endef


$(eval $(call BuildPackage,libqpidbroker2))
$(eval $(call BuildPackage,libqpidclient2))
$(eval $(call BuildPackage,libqpidcommon2))
$(eval $(call BuildPackage,libqpidmessaging2))
$(eval $(call BuildPackage,libqpidtypes1))
$(eval $(call BuildPackage,qpidd))
