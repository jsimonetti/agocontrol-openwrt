define Package/agocontrol-device-zwave
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device zwave
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-zwave),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_zwave=OFF
endif
