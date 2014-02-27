define Package/agocontrol-device-raspiMCP3xxxGPIO
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device raspiMCP3xxxGPIO
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-raspiMCP3xxxGPIO),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_raspiMCP3xxxGPIO=OFF
endif
