
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


define Package/libagoclient
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  URL:=http://www.agocontrol.com
  TITLE:=libagoclient1.0
  DEPENDS:=+libjsoncpp +libuuid +libqpidmessaging2 +libqpidtypes1
endef

define Package/libagoclient/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/shared/libagoclient.so* $(1)/usr/lib
endef

ifeq ($(CONFIG_PACKAGE_libagoclient),)
  CMAKE_OPTIONS += -DBUILD_SHARED=OFF
endif



#####################
## Agocontrol core ##
#####################

define Package/agocontrol-resolver
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-resolver
  DEPENDS:=+libyaml-cpp +libagoclient +libsqlite3 +boost-filesystem +boost-system
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-resolver),)
  CMAKE_OPTIONS += -DBUILD_CORE_resolver=OFF
endif

define Package/agocontrol-resolver/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/resolver/agoresolver $(1)/usr/bin
endef


##


define Package/agocontrol-rpc
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-rpc
  DEPENDS:=+libyaml-cpp +libagoclient +libsqlite3 +boost-filesystem +libpthread
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-rpc),)
  CMAKE_OPTIONS += -DBUILD_CORE_rpc=OFF
endif

define Package/agocontrol-rpc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/rpc/agorpc $(1)/usr/bin
endef


##


define Package/agocontrol-timer
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-timer
  DEPENDS:=+libagoclient +libhdate1
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-timer),)
  CMAKE_OPTIONS += -DBUILD_CORE_timer=OFF
endif

define Package/agocontrol-timer/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/timer/agotimer $(1)/usr/bin
endef


##


define Package/agocontrol-datalogger
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-datalogger
  DEPENDS:=+libagoclient +boost-date_time
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-datalogger),)
  CMAKE_OPTIONS += -DBUILD_CORE_datalogger=OFF
endif

define Package/agocontrol-datalogger/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/datalogger/agodatalogger $(1)/usr/bin
endef


##


## agolua is incompatible with openwrt due to lua5.2 needing a FPU now
## package set to status BROKEN
define Package/agocontrol-lua
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-lua
  DEPENDS:=+libagoclient @BROKEN
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-lua),)
  CMAKE_OPTIONS += -DBUILD_CORE_lua=OFF
endif

define Package/agocontrol-lua/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/lua/agolua $(1)/usr/bin
endef


##


define Package/agocontrol-messagesend
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-messagesend
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-messagesend),)
  CMAKE_OPTIONS += -DBUILD_CORE_messagesend=OFF
endif

define Package/agocontrol-messagesend/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/messagesend/messagesend $(1)/usr/bin
endef


##


define Package/agocontrol-scenario
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-scenario
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-scenario),)
  CMAKE_OPTIONS += -DBUILD_CORE_scenario=OFF
endif

define Package/agocontrol-scenario/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/scenario/agoscenario $(1)/usr/bin
endef


##


define Package/agocontrol-event
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-event
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-event),)
  CMAKE_OPTIONS += -DBUILD_CORE_event=OFF
endif

define Package/agocontrol-event/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/event/agoevent $(1)/usr/bin
endef


##


define Package/agocontrol-security
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-security
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-security),)
  CMAKE_OPTIONS += -DBUILD_CORE_security=OFF
endif

define Package/agocontrol-security/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/security/agosecurity $(1)/usr/bin
endef


##


define Package/agocontrol-security
  $(call Package/agocontrol/default)
  TITLE:=agocontrol-security
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-security),)
  CMAKE_OPTIONS += -DBUILD_CORE_security=OFF
endif

define Package/agocontrol-security/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/core/security/agosecurity $(1)/usr/bin
endef


##


########################
## Agocontrol Devices ##
########################

define Package/agocontrol/device
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
endef


define Package/agocontrol-device-enocean3
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device enocean3
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-enocean3),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_enocean3=OFF
endif


##


define Package/agocontrol-device-blinkm
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device blinkm
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-blinkm),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_blinkm=OFF
endif


##


define Package/agocontrol-device-chromoflex
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device chromoflex
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-chromoflex),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_chromoflex=OFF
endif


##


define Package/agocontrol-device-firmata
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device firmata
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-firmata),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_firmata=OFF
endif


##


define Package/agocontrol-device-i2c
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device i2c
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-i2c),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_i2c=OFF
endif


##


define Package/agocontrol-device-irtrans_ethernet
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device irtrans_ethernet
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-irtrans_ethernet),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_irtrans_ethernet=OFF
endif


##


define Package/agocontrol-device-kwikwai
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device kwikwai
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-kwikwai),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_kwikwai=OFF
endif


##


define Package/agocontrol-device-mediaproxy
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device mediaproxy
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-mediaproxy),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_mediaproxy=OFF
endif


##


define Package/agocontrol-device-rain8net
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device rain8net
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-rain8net),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_rain8net=OFF
endif


##


define Package/agocontrol-device-zwave
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device zwave
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-zwave),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_zwave=OFF
endif


##


define Package/agocontrol-device-1wire
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device 1wire
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-1wire),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_1wire=OFF
endif


##


define Package/agocontrol-device-syslog
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device syslog
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-syslog),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_syslog=OFF
endif


##


define Package/agocontrol-device-enigma2
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device enigma2
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-enigma2),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_enigma2=OFF
endif


##


define Package/agocontrol-device-asterisk
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device asterisk
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-asterisk),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_asterisk=OFF
endif


##


define Package/agocontrol-device-agoapc
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device agoapc
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-agoapc),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_agoapc=OFF
endif


##


define Package/agocontrol-device-agojointspace
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device agojointspace
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-agojointspace),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_agojointspace=OFF
endif


##


define Package/agocontrol-device-raspiGPIO
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device raspiGPIO
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-raspiGPIO),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_raspiGPIO=OFF
endif


##


define Package/agocontrol-device-raspi1wGPIO
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device raspi1wGPIO
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-raspi1wGPIO),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_raspi1wGPIO=OFF
endif


##


define Package/agocontrol-device-raspiMCP3xxxGPIO
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device raspiMCP3xxxGPIO
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-raspiMCP3xxxGPIO),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_raspiMCP3xxxGPIO=OFF
endif


##


define Package/agocontrol-device-gc100
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device gc100
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-gc100),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_gc100=OFF
endif


##


define Package/agocontrol-device-onkyo
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device onkyo
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-onkyo),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_onkyo=OFF
endif


##


define Package/agocontrol-device-x10
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device x10
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-x10),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_x10=OFF
endif


##


define Package/agocontrol-device-webcam
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device webcam
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-webcam),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_webcam=OFF
endif


##


define Package/agocontrol-device-temperatur.nu
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device temperatur.nu
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-temperatur.nu),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_temperatur.nu=OFF
endif


##


define Package/agocontrol-device-wake_on_lan
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device wake_on_lan
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-wake_on_lan),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_wake_on_lan=OFF
endif


##


define Package/agocontrol-device-squeezebox
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device squeezebox
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-squeezebox),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_squeezebox=OFF
endif


##


define Package/agocontrol-device-alert
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device alert
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-alert),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_alert=OFF
endif


##


define Package/agocontrol-device-ipx800
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device ipx800
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-ipx800),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_ipx800=OFF
endif


##


define Package/agocontrol-device-raspiCamera
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device raspiCamera
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-raspiCamera),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_raspiCamera=OFF
endif


##


define Package/agocontrol-device-scheduler
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device scheduler
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-scheduler),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_scheduler=OFF
endif


##


define Package/agocontrol-device-knx
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device knx
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-knx),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_knx=OFF
endif


##


define Package/agocontrol-device-agodmx
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device agodmx
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-agodmx),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_agodmx=OFF
endif


$(eval $(call BuildPackage,libagoclient))
$(eval $(call BuildPackage,agocontrol-resolver))
$(eval $(call BuildPackage,agocontrol-rpc))
$(eval $(call BuildPackage,agocontrol-timer))
$(eval $(call BuildPackage,agocontrol-datalogger))
$(eval $(call BuildPackage,agocontrol-lua))
$(eval $(call BuildPackage,agocontrol-messagesend))
$(eval $(call BuildPackage,agocontrol-scenario))
$(eval $(call BuildPackage,agocontrol-event))
$(eval $(call BuildPackage,agocontrol-security))
$(eval $(call BuildPackage,agocontrol-device-enocean3))
$(eval $(call BuildPackage,agocontrol-device-blinkm))
$(eval $(call BuildPackage,agocontrol-device-chromoflex))
$(eval $(call BuildPackage,agocontrol-device-firmata))
$(eval $(call BuildPackage,agocontrol-device-i2c))
$(eval $(call BuildPackage,agocontrol-device-irtrans_ethernet))
$(eval $(call BuildPackage,agocontrol-device-kwikwai))
$(eval $(call BuildPackage,agocontrol-device-mediaproxy))
$(eval $(call BuildPackage,agocontrol-device-rain8net))
$(eval $(call BuildPackage,agocontrol-device-zwave))
$(eval $(call BuildPackage,agocontrol-device-1wire))
$(eval $(call BuildPackage,agocontrol-device-syslog))
$(eval $(call BuildPackage,agocontrol-device-enigma2))
$(eval $(call BuildPackage,agocontrol-device-asterisk))
$(eval $(call BuildPackage,agocontrol-device-agoapc))
$(eval $(call BuildPackage,agocontrol-device-agojointspace))
$(eval $(call BuildPackage,agocontrol-device-raspiGPIO))
$(eval $(call BuildPackage,agocontrol-device-raspi1wGPIO))
$(eval $(call BuildPackage,agocontrol-device-raspiMCP3xxxGPIO))
$(eval $(call BuildPackage,agocontrol-device-gc100))
$(eval $(call BuildPackage,agocontrol-device-onkyo))
$(eval $(call BuildPackage,agocontrol-device-x10))
$(eval $(call BuildPackage,agocontrol-device-webcam))
$(eval $(call BuildPackage,agocontrol-device-temperatur.nu))
$(eval $(call BuildPackage,agocontrol-device-wake_on_lan))
$(eval $(call BuildPackage,agocontrol-device-squeezebox))
$(eval $(call BuildPackage,agocontrol-device-alert))
$(eval $(call BuildPackage,agocontrol-device-ipx800))
$(eval $(call BuildPackage,agocontrol-device-raspiCamera))
$(eval $(call BuildPackage,agocontrol-device-scheduler))
$(eval $(call BuildPackage,agocontrol-device-knx))
$(eval $(call BuildPackage,agocontrol-device-agodmx))
