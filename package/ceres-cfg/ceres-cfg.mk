################################################################################
#
# ceres-cfg
#
################################################################################

CERES_CFG_VERSION = master
CERES_CFG_SITE = git://github.com/ceres/ceres-cfg.git
CERES_CFG_SITE_METHOD = git

CERES_CFG_DEPENDENCIES = ceres-env-overlay python3 python-flask python-requests

CERES_CFG_MAKE_ENV = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS)

define CERES_CFG_BUILD_CMDS
	$(CERES_CFG_MAKE_ENV) $(MAKE) -C $(@D)
endef

define CERES_CFG_INSTALL_TARGET_CMDS
	$(CERES_CFG_MAKE_ENV) $(MAKE) -C $(@D) install
endef

$(eval $(generic-package))
