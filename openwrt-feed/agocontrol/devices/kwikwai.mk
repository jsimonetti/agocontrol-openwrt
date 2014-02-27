define Package/agocontrol-device-kwikwai
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device kwikwai
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-kwikwai),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_kwikwai=OFF
endif
