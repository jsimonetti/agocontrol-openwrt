# 
# Copyright (C) 2006-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lua52
PKG_VERSION:=5.2.3
PKG_RELEASE:=1

PKG_SOURCE:=lua-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://www.lua.org/ftp/ \
	http://ftp.gwdg.de/pub/languages/lua/ \
	http://mirrors.dotsrc.org/lua/ \
	http://www.tecgraf.puc-rio.br/lua/ftp/
PKG_MD5SUM:=dc7f94ec6ff15c985d2d6ad0f1b35654
PKG_BUILD_PARALLEL:=1

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYRIGHT

PKG_BUILD_DIR:=$(BUILD_DIR)/lua-$(PKG_VERSION)

#HOST_PATCH_DIR := ./patches-host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/lua52/Default
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  SUBMENU:=Lua52
  TITLE:=Lua programming language
  URL:=http://www.lua.org/
  MAINTAINER:=Jo-Philipp Wich <jow@openwrt.org>
endef

define Package/lua52/Default/description
 Lua is a powerful light-weight programming language designed for extending 
 applications. Lua is also frequently used as a general-purpose, stand-alone 
 language. Lua is free software.
endef

define Package/liblua52
$(call Package/lua52/Default)
  TITLE+= (libraries)
endef

define Package/liblua52/description
$(call Package/lua52/Default/description)
 This package contains the Lua shared libraries, needed by other programs.
endef

define Package/lua52
$(call Package/lua52/Default)
  DEPENDS:=+liblua52 +libncurses +libreadline
  TITLE+= (interpreter)
endef

define Package/lua52/description
$(call Package/lua52/Default/description)
 This package contains the Lua language interpreter.
endef

define Package/lua52c
$(call Package/lua52/Default)
  DEPENDS:=+liblua52
  TITLE+= (compiler)
endef

define Package/lua52c/description
$(call Package/lua52/Default/description)
 This package contains the Lua language compiler.
endef

define Package/lua52-examples
$(call Package/lua52/Default)
  DEPENDS:=lua52
  TITLE+= (examples)
endef

define Package/lua52-examples/description
$(call Package/lua52/Default/description)
 This package contains Lua language examples.
endef

define Build/Configure
endef

TARGET_CFLAGS += -DLUA_USE_LINUX $(FPIC) -std=gnu99
TARGET_LDFLAGS += -lcurses

ifneq ($(CONFIG_USE_EGLIBC),)
  ifeq ($(CONFIG_EGLIBC_OPTION_EGLIBC_UTMP),)
    TARGET_CFLAGS += -DNO_GETLOGIN
  endif
endif

define Build/Compile
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
		CC="$(TARGET_CROSS)gcc" \
		AR="$(TARGET_CROSS)ar rcu" \
		RANLIB="$(TARGET_CROSS)ranlib" \
		INSTALL_ROOT=/usr/local \
		CFLAGS="$(TARGET_CPPFLAGS) $(TARGET_CFLAGS)" \
		MYLDFLAGS="$(TARGET_LDFLAGS)" \
		PKG_VERSION=$(PKG_VERSION) \
		linux
	rm -rf $(PKG_INSTALL_DIR)
	mkdir -p $(PKG_INSTALL_DIR)
	$(MAKE) -C $(PKG_BUILD_DIR) \
		INSTALL_TOP="$(PKG_INSTALL_DIR)/usr/local" \
		install
endef

define Host/Configure
	$(SED) 's,"/usr/local/","$(STAGING_DIR_HOST)/",' $(HOST_BUILD_DIR)/src/luaconf.h
endef

ifeq ($(HOST_OS),Darwin)
	LUA_OS:=macosx
else
	ifeq ($(HOST_OS),FreeBSD)
		LUA_OS:=freebsd
	else
		LUA_OS:=linux
	endif
endif

define Host/Compile
	$(MAKE) -C $(HOST_BUILD_DIR) \
		CC="$(HOSTCC) -std=gnu99" \
		$(LUA_OS)
endef

define Host/Install
	$(MAKE) -C $(HOST_BUILD_DIR) \
		INSTALL_TOP="$(STAGING_DIR_HOST)" \
		install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/local/include
	$(CP) $(PKG_INSTALL_DIR)/usr/local/include/lua{,lib,conf}.h $(1)/usr/local/include/
	$(CP) $(PKG_INSTALL_DIR)/usr/local/include/lua.hpp $(1)/usr/local/include/
	$(CP) $(PKG_INSTALL_DIR)/usr/local/include/lauxlib.h $(1)/usr/local/include/
	$(INSTALL_DIR) $(1)/usr/local/lib
	$(CP) $(PKG_BUILD_DIR)/src/liblua.{a,so*} $(1)/usr/local/lib/
	$(INSTALL_DIR) $(1)/usr/local/lib/pkgconfig
endef

define Package/liblua/install
	$(INSTALL_DIR) $(1)/usr/local/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/local/lib/liblua.so.* $(1)/usr/local/lib/
endef

define Package/lua52/install
	$(INSTALL_DIR) $(1)/usr/local/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/local/bin/lua $(1)/usr/local/bin/
endef

define Package/lua52c/install
	$(INSTALL_DIR) $(1)/usr/local/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/local/bin/luac $(1)/usr/local/bin/
endef

define Package/lua52-examples/install
	$(INSTALL_DIR) $(1)/usr/local/share/lua/examples
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/test/*.lua \
		$(1)/usr/local/share/lua/examples/
endef

$(eval $(call BuildPackage,liblua52))
$(eval $(call BuildPackage,lua52))
$(eval $(call BuildPackage,lua52c))
$(eval $(call BuildPackage,lua52-examples))
$(eval $(call HostBuild))

