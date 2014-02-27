define Package/agocontrol-device-1wire
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device 1wire
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-1wire),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_1wire=OFF
endif
