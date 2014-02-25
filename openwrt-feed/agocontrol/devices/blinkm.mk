
define Package/agocontrol-device-blinkm
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device blinkm
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-blinkm),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_blinkm=OFF
endif

