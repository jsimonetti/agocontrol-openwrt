define Package/agocontrol-device-asterisk
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device asterisk
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-asterisk),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_asterisk=OFF
endif
