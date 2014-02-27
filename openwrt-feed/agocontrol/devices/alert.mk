define Package/agocontrol-device-alert
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device alert
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-alert),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_alert=OFF
endif
