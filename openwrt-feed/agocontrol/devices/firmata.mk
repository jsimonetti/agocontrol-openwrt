define Package/agocontrol-device-firmata
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device firmata
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-firmata),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_firmata=OFF
endif
