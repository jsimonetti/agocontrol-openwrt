
include $(TOPDIR)/rules.mk

PKG_NAME:=qpid-cpp
PKG_VERSION:=0.24
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://apache.cs.uu.nl/dist/qpid/$(PKG_VERSION)
PKG_SHA1SUM:=a1449cdb5b6319f0c0e47a47fbd97d539e79804d

PKG_BUILD_DIR:=$(BUILD_DIR)/qpidc-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/qpid/default
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  SUBMENU:=Qpid
  URL:=http://qpid.apache.org
endef

define Package/libqpidbroker2
  $(call Package/qpid/default)
  TITLE:=Library for Qpid daemon
  DEPENDS:=+libqpidcommon2 +libstdcpp
endef

define Package/libqpidclient2
  $(call Package/qpid/default)
  TITLE:=Library for AMQP clients
  DEPENDS:=+libqpidcommon2 +libstdcpp +libuuid
endef

define Package/libqpidcommon2
  $(call Package/qpid/default)
  TITLE:=Library for common stuff
  DEPENDS:=+boost-program_options +boost-system +libqpidtypes1 +libuuid +libstdcpp +boost-test
endef

define Package/libqpidmessaging2
  $(call Package/qpid/default)
  TITLE:=Library for AMQP messages
  DEPENDS:=+libqpidclient2 +libqpidtypes1 +libstdcpp
endef

define Package/libqpidtypes1
  $(call Package/qpid/default)
  TITLE:=Library for Qpid datatypes
  DEPENDS:=+libuuid +libstdcpp +boost-system +libpthread
endef

define Package/qpidd
  $(call Package/qpid/default)
  TITLE:=Qpid daemon
  DEPENDS:=+boost-program_options +libqpidbroker2 +libqpidclient2 +libqpidcommon2 +libqpidmessaging2
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


$(eval $(call BuildPackage,qpidd))
$(eval $(call BuildPackage,libqpidbroker2))
$(eval $(call BuildPackage,libqpidclient2))
$(eval $(call BuildPackage,libqpidcommon2))
$(eval $(call BuildPackage,libqpidmessaging2))
$(eval $(call BuildPackage,libqpidtypes1))
