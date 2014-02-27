define Package/agocontrol-device-irtrans_ethernet
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device irtrans_ethernet
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-irtrans_ethernet),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_irtrans_ethernet=OFF
endif
