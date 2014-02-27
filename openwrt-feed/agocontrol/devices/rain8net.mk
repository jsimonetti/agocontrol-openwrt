define Package/agocontrol-device-rain8net
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device rain8net
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-rain8net),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_rain8net=OFF
endif
