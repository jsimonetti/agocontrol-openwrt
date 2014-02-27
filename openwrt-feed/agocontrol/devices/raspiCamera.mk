define Package/agocontrol-device-raspiCamera
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device raspiCamera
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-raspiCamera),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_raspiCamera=OFF
endif
