################################################################################
#
# bird6
#
################################################################################

BIRD6_VERSION = 1.6.3
BIRD6_SOURCE = bird-1.6.3.tar.gz
BIRD6_SITE = ftp://bird.network.cz/pub/bird
BIRD6_CONF_OPTS = --disable-client --enable-ipv6

BIRD6_MAKE_ENV = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS)

define BIRD6_BUILD_CMDS
	$(BIRD6_MAKE_ENV) $(MAKE) -C $(@D)
endef

define BIRD6_INSTALL_TARGET_CMDS
	$(BIRD6_MAKE_ENV) $(MAKE) -C $(@D) install DESTDIR=$(TARGET_DIR)
endef

$(eval $(autotools-package))
