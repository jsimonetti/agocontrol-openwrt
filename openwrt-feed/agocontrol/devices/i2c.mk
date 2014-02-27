define Package/agocontrol-device-i2c
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device i2c
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-i2c),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_i2c=OFF
endif
