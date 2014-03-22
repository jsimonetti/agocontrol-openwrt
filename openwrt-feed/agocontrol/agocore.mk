define Package/agocontrol-resolver
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-resolver
  DEPENDS:=+libyaml-cpp +libagoclient +libsqlite3 +boost-filesystem +boost-system +agocontrol-common
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-resolver),)
  CMAKE_OPTIONS += -DBUILD_CORE_resolver=OFF
endif

define Package/agocontrol-resolver/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agoresolver $(1)$(BINDIR)
endef
#	$(INSTALL_DIR) $(1)/lib/systemd/system
#	$(CP) $(PKG_INSTALL_DIR)/lib/systemd/system/agoresolver.service $(1)/lib/systemd/system


##


define Package/agocontrol-rpc
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-rpc
  DEPENDS:=+libyaml-cpp +libagoclient +libsqlite3 +boost-filesystem +libpthread +agocontrol-common +libopenssl
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-rpc),)
  CMAKE_OPTIONS += -DBUILD_CORE_rpc=OFF
endif

define Package/agocontrol-rpc/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agorpc $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/rpc-htpasswd $(1)$(BINDIR)
	$(INSTALL_DIR) $(1)$(HTMLDIR)/
	$(CP) $(PKG_INSTALL_DIR)$(HTMLDIR)/* $(1)$(HTMLDIR)/
	$(INSTALL_DIR) $(1)/lib/systemd/system
	$(CP) $(PKG_INSTALL_DIR)/lib/systemd/system/agorpc.service $(1)/lib/systemd/system/
	$(INSTALL_DIR) $(1)$(CONFDIR)/rpc
	$(CP) $(PKG_INSTALL_DIR)$(CONFDIR)/rpc/rpc_cert.pem $(1)$(CONFDIR)/rpc/
	$(INSTALL_DIR) $(1)$(CONFDIR)/conf.d
	$(CP) $(PKG_INSTALL_DIR)$(CONFDIR)/conf.d/rpc.conf $(1)$(CONFDIR)/conf.d/
endef


##


define Package/agocontrol-timer
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-timer
  DEPENDS:=+libagoclient +agocontrol-common
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-timer),)
  CMAKE_OPTIONS += -DBUILD_CORE_timer=OFF
endif

define Package/agocontrol-timer/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agotimer $(1)$(BINDIR)
	$(INSTALL_DIR) $(1)/lib/systemd/system
	$(CP) $(PKG_INSTALL_DIR)/lib/systemd/system/agotimer.service $(1)/lib/systemd/system/
endef


##


define Package/agocontrol-datalogger
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-datalogger
  DEPENDS:=+libagoclient +boost-date_time +libsqlite3 +agocontrol-common
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-datalogger),)
  CMAKE_OPTIONS += -DBUILD_CORE_datalogger=OFF
endif

define Package/agocontrol-datalogger/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agodatalogger $(1)$(BINDIR)
	$(INSTALL_DIR) $(1)/lib/systemd/system
	$(CP) $(PKG_INSTALL_DIR)/lib/systemd/system/agodatalogger.service $(1)/lib/systemd/system/
endef


##


## agolua is incompatible with openwrt due to lua5.2 needing a FPU now
## package set to status BROKEN
define Package/agocontrol-lua
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-lua
  DEPENDS:=+libagoclient +agocontrol-common @BROKEN
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-lua),)
  CMAKE_OPTIONS += -DBUILD_CORE_lua=OFF
endif

define Package/agocontrol-lua/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agolua $(1)$(BINDIR)
endef


##


define Package/agocontrol-drain
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-drain
  DEPENDS:=+libagoclient +agocontrol-common
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-drain),)
  CMAKE_OPTIONS += -DBUILD_CORE_drain=OFF
endif

define Package/agocontrol-drain/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agodrain $(1)$(BINDIR)
endef


##


define Package/agocontrol-messagesend
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-messagesend
  DEPENDS:=+libagoclient +agocontrol-common
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-messagesend),)
  CMAKE_OPTIONS += -DBUILD_CORE_messagesend=OFF
endif

define Package/agocontrol-messagesend/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/messagesend $(1)$(BINDIR)
endef


##


define Package/agocontrol-scenario
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-scenario
  DEPENDS:=+libagoclient +agocontrol-common
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-scenario),)
  CMAKE_OPTIONS += -DBUILD_CORE_scenario=OFF
endif

define Package/agocontrol-scenario/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agoscenario $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/convert-scenario.py $(1)$(BINDIR)
	$(INSTALL_DIR) $(1)/lib/systemd/system
	$(CP) $(PKG_INSTALL_DIR)/lib/systemd/system/agoscenario.service $(1)/lib/systemd/system/
endef


##


define Package/agocontrol-event
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-event
  DEPENDS:=+libagoclient +agocontrol-common
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-event),)
  CMAKE_OPTIONS += -DBUILD_CORE_event=OFF
endif

define Package/agocontrol-event/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agoevent $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/convert-event.py $(1)$(BINDIR)
	$(INSTALL_DIR) $(1)/lib/systemd/system
	$(CP) $(PKG_INSTALL_DIR)/lib/systemd/system/agoevent.service $(1)/lib/systemd/system/
endef


##


define Package/agocontrol-security
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-security
  DEPENDS:=+libagoclient +agocontrol-common
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-security),)
  CMAKE_OPTIONS += -DBUILD_CORE_security=OFF
endif

define Package/agocontrol-security/install
	$(INSTALL_DIR) $(1)$(BINDIR)
	$(CP) $(PKG_INSTALL_DIR)$(BINDIR)/agosecurity $(1)$(BINDIR)
endef


##

