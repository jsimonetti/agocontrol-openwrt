define Package/agocontrol-device-agodmx
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device agodmx
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-agodmx),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_agodmx=OFF
endif
