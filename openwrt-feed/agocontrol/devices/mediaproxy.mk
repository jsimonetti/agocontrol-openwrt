define Package/agocontrol-device-mediaproxy
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device mediaproxy
  DEPENDS:=+libagoclient +libc6
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-mediaproxy),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_mediaproxy=OFF
endif
