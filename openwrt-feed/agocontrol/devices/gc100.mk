define Package/agocontrol-device-gc100
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device gc100
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-gc100),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_gc100=OFF
endif
