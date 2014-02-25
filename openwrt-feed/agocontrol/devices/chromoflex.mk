define Package/agocontrol-device-chromoflex
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device chromoflex
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-chromoflex),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_chromoflex=OFF
endif
