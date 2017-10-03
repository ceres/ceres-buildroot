################################################################################
#
# bird4
#
################################################################################

BIRD4_VERSION = 1.6.3
BIRD4_SOURCE = bird-1.6.3.tar.gz
BIRD4_SITE = ftp://bird.network.cz/pub/bird
BIRD4_CONF_OPTS = --disable-client --disable-ipv6

BIRD4_MAKE_ENV = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS)

define BIRD4_BUILD_CMDS
	$(BIRD4_MAKE_ENV) $(MAKE) -C $(@D)
endef

define BIRD4_INSTALL_TARGET_CMDS
	$(BIRD4_MAKE_ENV) $(MAKE) -C $(@D) install DESTDIR=$(TARGET_DIR)
endef

$(eval $(autotools-package))
