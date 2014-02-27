define Package/agocontrol-device-syslog
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device syslog
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-syslog),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_syslog=OFF
endif
