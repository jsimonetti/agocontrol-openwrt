define Package/agocontrol-device-agoapc
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device agoapc
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-agoapc),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_agoapc=OFF
endif
