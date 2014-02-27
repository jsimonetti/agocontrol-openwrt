define Package/agocontrol-device-squeezebox
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device squeezebox
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-squeezebox),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_squeezebox=OFF
endif
