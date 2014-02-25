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
