define Package/agocontrol-device-raspiGPIO
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device raspiGPIO
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-raspiGPIO),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_raspiGPIO=OFF
endif
