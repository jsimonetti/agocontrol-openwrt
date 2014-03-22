
include $(TOPDIR)/rules.mk

PKG_NAME:=qpid-python
PKG_VERSION:=0.26
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://apache.cs.uu.nl/dist/qpid/$(PKG_VERSION)
PKG_MD5SUM:=f45663918ada0c3e6de923eec8d8175b

PKG_BUILD_DIR := $(BUILD_DIR)/qpid-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/qpid-python
  SECTION:=agocontrol
  CATEGORY:=AgoControl
  SUBMENU:=Qpid
  TITLE:=Python bindings for Apache Qpid
  DEPENDS:=+python +pyopenssl
  URL:=http://qpid.apache.org
endef

define Build/Compile
	$(call Build/Compile/PyMod,./python/, build)
endef

define Package/qpid-python/install
	$(INSTALL_DIR) $(1)$(PYTHON_PKG_DIR)
	find $(PKG_BUILD_DIR)/python/build/lib -name "*\.pyc" -o -name "*\.pyo" | xargs rm -f
	$(CP) $(PKG_BUILD_DIR)/python/build/lib/* $(1)$(PYTHON_PKG_DIR)
endef

$(eval $(call BuildPackage,qpid-python))
