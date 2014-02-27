define Package/agocontrol-device-raspi1wGPIO
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device raspi1wGPIO
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-raspi1wGPIO),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_raspi1wGPIO=OFF
endif
