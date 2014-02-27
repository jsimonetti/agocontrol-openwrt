define Package/agocontrol-device-x10
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device x10
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-x10),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_x10=OFF
endif
