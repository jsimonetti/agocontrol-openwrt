include devices/enocean.mk
include devices/blinkm.mk
include devices/chromoflex.mk
include devices/firmata.mk

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


##


