define Package/agocontrol-device-onkyo
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device onkyo
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-onkyo),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_onkyo=OFF
endif
