define Package/agocontrol-device-wake_on_lan
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device wake_on_lan
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-wake_on_lan),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_wake_on_lan=OFF
endif
