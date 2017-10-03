################################################################################
#
# ceres-env-overlay
#
################################################################################

CERES_ENV_OVERLAY_VERSION = master
CERES_ENV_OVERLAY_SITE = git://github.com/ceres/ceres-env-overlay.git
CERES_ENV_OVERLAY_SITE_METHOD = git

CERES_ENV_OVERLAY_MAKE_ENV = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS)

define CERES_ENV_OVERLAY_BUILD_CMDS
	$(CERES_ENV_OVERLAY_MAKE_ENV) $(MAKE) -C $(@D)
endef

define CERES_ENV_OVERLAY_INSTALL_TARGET_CMDS
	$(CERES_ENV_OVERLAY_MAKE_ENV) $(MAKE) -C $(@D) install
endef

$(eval $(generic-package))
