################################################################################
#
# ceres-init-generic
#
################################################################################

CERES_INIT_GENERIC_VERSION = master
CERES_INIT_GENERIC_SITE = git://github.com/ceres/ceres-init-generic.git
CERES_INIT_GENERIC_SITE_METHOD = git

CERES_INIT_GENERIC_MAKE_ENV = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS)

define CERES_INIT_GENERIC_BUILD_CMDS
	$(CERES_INIT_GENERIC_MAKE_ENV) $(MAKE) -C $(@D)
endef

define CERES_INIT_GENERIC_INSTALL_TARGET_CMDS
	$(CERES_INIT_GENERIC_MAKE_ENV) $(MAKE) -C $(@D) install
endef

$(eval $(generic-package))
