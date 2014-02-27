define Package/agocontrol-device-enigma2
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device enigma2
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-enigma2),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_enigma2=OFF
endif
