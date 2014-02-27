define Package/agocontrol-device-temperatur.nu
  $(call Package/agocontrol/default)
  SUBMENU:=Devices
  TITLE:=agocontrol device temperatur.nu
  DEPENDS:=+libagoclient
endef

ifeq ($(CONFIG_PACKAGE_agocontrol-device-temperatur.nu),)
  CMAKE_OPTIONS += -DBUILD_DEVICE_temperatur.nu=OFF
endif
