
include $(TOPDIR)/rules.mk

PKG_NAME:=agocontrol
PKG_VERSION:=$(shell date +%Y%m%d)
PKG_RELEASE=$(shell date +%H%M%S)
PKG_SOURCE_VERSION:=cmake-support
PKG_SOURCE_URL:=http://agocontrol.com/agocontrol.git
PKG_SOURCE_URL:=file:///home/jeroen/dev/agocontrol
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)


include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk


BINDIR:=/opt/agocontrol/bin
ETCDIR:=/etc
LIBDIR:=/usr/lib
CONFDIR:=$(ETCDIR)/opt/agocontrol
INCDIR:=/usr/include/agocontrol
DATADIR:=/opt/agocontrol/var
LOCALSTATEDIR:=/opt/agocontrol/var
HTMLDIR:=/opt/agocontrol/html

CMAKE_OPTIONS += -DCMAKE_BUILD_TYPE=RELEASE \
                 -DBINDIR=$(BINDIR) \
                 -DETCDIR=$(ETCDIR) \
                 -DLIBDIR=$(LIBDIR) \
                 -DCONFDIR=$(CONFDIR) \
                 -DINCDIR=$(INCDIR) \
                 -DDATADIR=$(DATADIR) \
                 -DLOCALSTATEDIR=$(LOCALSTATEDIR) \
                 -DHTMLDIR=$(HTMLDIR)



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
	$(INSTALL_DIR) $(1)$(LIBDIR)
	$(CP) $(PKG_INSTALL_DIR)$(LIBDIR)/libagoclient.so* $(1)$(LIBDIR)
endef
#	$(INCDIR)/agoclient.h
#	$(INCDIR)/CDataFile.h

ifeq ($(CONFIG_PACKAGE_libagoclient),)
  CMAKE_OPTIONS += -DBUILD_SHARED=OFF
endif


##


define Package/agocontrol-common
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-common
endef

define Package/agocontrol-common/install
	$(INSTALL_DIR) $(1)$(CONFDIR)/conf.d
	$(CP) $(PKG_INSTALL_DIR)$(CONFDIR)/conf.d/system.conf $(1)$(CONFDIR)/conf.d
	$(CP) $(PKG_INSTALL_DIR)$(CONFDIR)/schema.yaml $(1)$(CONFDIR)
	$(INSTALL_DIR) $(1)$(DATADIR)
	$(CP) $(PKG_INSTALL_DIR)$(DATADIR)/inventory.sql $(1)$(DATADIR)
	$(CP) $(PKG_INSTALL_DIR)$(DATADIR)/datalogger.sql $(1)$(DATADIR)
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agodrain.py $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/myavahi.py $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agoctrl.sh $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/convert-config.py $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agososreport.sh $(1)$(BINDIR)
	$(INSTALL_DIR) $(1)$(ETCDIR)/security/limits.d/agocontrol.conf
	$(CP) $(PKG_INSTALL_DIR)$(ETCDIR)/security/limits.d/agocontrol.conf/security-limits.conf $(1)$(ETCDIR)/security/limits.d/agocontrol.conf
	$(INSTALL_DIR) $(1)$(ETCDIR)/sysctl.d/agocontrol.conf/
	$(CP) $(PKG_INSTALL_DIR)$(ETCDIR)/sysctl.d/agocontrol.conf/sysctl.conf $(1)$(ETCDIR)/sysctl.d/agocontrol.conf
endef


##

$(eval $(call BuildPackage,libagoclient))
$(eval $(call BuildPackage,agocontrol-common))

#
include calls.mk
include devices/calls.mk
#
