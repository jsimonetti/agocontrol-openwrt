define Package/agocontrol-device-knx
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device knx
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-knx),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_knx=OFF
endif
