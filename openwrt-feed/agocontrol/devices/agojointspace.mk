define Package/agocontrol-device-agojointspace
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device agojointspace
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-agojointspace),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_agojointspace=OFF
endif
