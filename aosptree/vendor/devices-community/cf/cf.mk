# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2023 The GlodDroid project

$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Architecture
# TARGET_BOARD_SUFFIX := _32
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Product
PRODUCT_BOARD_PLATFORM := msm8909
PRODUCT_NAME := cf_global_com
PRODUCT_DEVICE := cf
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H410
PRODUCT_MANUFACTURER := LGE
PRODUCT_HAS_EMMC := true

PRODUCT_USE_DYNAMIC_PARTITIONS := false
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_BUILD_SYSTEM_OTHER_IMAGE := false

GD_LCD_DENSITY := 160
GD_AUDIOPOLICY_FILE := vendor/devices-community/cf/etc/audio_policy_configuration.xml
