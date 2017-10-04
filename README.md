# ceres-buildroot

This repository contains the support files needed to build `ceres`, including default buildroot and Linux kernel configurations, and package descriptors for the `ceres` and other supporting packages.

## Usage

Clone this repository to a location of your choosing, for example, your home directory:
```
cd ~
git clone https://github.com/ceres/ceres-buildroot/
```

Then navigate into your `buildroot` folder and load the default `ceres-buildroot` configuration:
```
make defconfig BR2_DEFCONFIG=~/ceres-buildroot/configs/buildroot_defconfig
```

Configure your build to your target platform:
```
make menuconfig BR2_EXTERNAL=~/ceres-buildroot/
```

Then start the build:
```
make
```
