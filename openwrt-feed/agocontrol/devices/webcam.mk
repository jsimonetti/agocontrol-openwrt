define Package/agocontrol-device-webcam
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device webcam
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-webcam),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_webcam=OFF
endif
