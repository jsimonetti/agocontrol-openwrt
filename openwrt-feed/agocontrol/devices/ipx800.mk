define Package/agocontrol-device-ipx800
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device ipx800
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-ipx800),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_ipx800=OFF
endif
