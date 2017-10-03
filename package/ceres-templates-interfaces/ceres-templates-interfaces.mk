################################################################################
#
# ceres-templates-interfaces
#
################################################################################

CERES_TEMPLATES_INTERFACES_VERSION = master
CERES_TEMPLATES_INTERFACES_SITE = git://github.com/ceres/ceres-templates-interfaces.git
CERES_TEMPLATES_INTERFACES_SITE_METHOD = git

CERES_TEMPLATES_INTERFACES_DEPENDENCIES = ceres-cfg iproute2 net-tools bridge-utils

CERES_TEMPLATES_INTERFACES_MAKE_ENV = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS)

define CERES_TEMPLATES_INTERFACES_BUILD_CMDS
	$(CERES_TEMPLATES_INTERFACES_MAKE_ENV) $(MAKE) -C $(@D)
endef

define CERES_TEMPLATES_INTERFACES_INSTALL_TARGET_CMDS
	$(CERES_TEMPLATES_INTERFACES_MAKE_ENV) $(MAKE) -C $(@D) install
endef

$(eval $(generic-package))
