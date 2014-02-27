define Package/agocontrol-device-scheduler
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device scheduler
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-scheduler),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_scheduler=OFF
endif
