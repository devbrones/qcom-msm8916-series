# SPDX-License-Identifier: Apache-2.0
#
# Copyright (C) 2023 The GloDroid project

$(call inherit-product, glodroid/configuration/common/device-common.mk)

GD_NO_DEFAULT_FASTBOOTD := true
GD_NO_DEFAULT_BOOTCTL   := true
GD_NO_DEFAULT_CAMERA    := true
GD_NO_DEFAULT_APPS      := true

# Files from linux-firmware TODO
PRODUCT_COPY_FILES += \
    glodroid/linux-firmware/qcom/a420_pfp.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/a420_pfp.fw \
    glodroid/linux-firmware/qcom/a420_pm4.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/a420_pm4.fw \
    glodroid/linux-firmware/qcom/venus-1.8/venus.mbn:$(TARGET_COPY_OUT_VENDOR)/firmware/qcom/venus-1.8/venus.mbn \




# Symlink firmware files from device partitions
PRODUCT_PACKAGES += idol3_firmware



PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/usr/keylayout/cf-keypad.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/cf-keypad.kl \
    $(LOCAL_PATH)/usr/idc/pp2106-keypad.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/pp2106-keypad.idc \
    glodroid/configuration/common/no_suspend.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/no_suspend.rc \
    $(LOCAL_PATH)/etc/init.rmtfs.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.rmtfs.rc \
#TODO#    $(LOCAL_PATH)/etc/init.rmtfs.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.rmtfs.rc \
    $(LOCAL_PATH)/etc/permissions.idol3.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/permissions.idol3.rc \
    $(LOCAL_PATH)/etc/sensors.idol3.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/sensors.idol3.rc \
    $(LOCAL_PATH)/etc/uevent.device.rc:$(TARGET_COPY_OUT_VENDOR)/etc/uevent.device.rc \

#TODO#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/audio.idol3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio.idol3.xml \

# Lights HAL
PRODUCT_PACKAGES += \
    android.hardware.lights-service \

# Sensors HAL
PRODUCT_PACKAGES += \
    sensors.iio \
    android.hardware.sensors@1.0-impl:64 \
    android.hardware.sensors@1.0-service \

# qcom modem/DSP services
PRODUCT_PACKAGES += \
    rmtfs \
    tqftpserv \

# Checked by android.opengl.cts.OpenGlEsVersionTest#testOpenGlEsVersion.
# Required to run correct set of dEQP tests.
# 196608 == 0x00030000 == GLES v3.0
PRODUCT_VENDOR_PROPERTIES += \
    ro.opengles.version=196608

# RRO that disables round items in quicksetting menu to increase performance
PRODUCT_PACKAGES += \
    SystemUISlowGpu

# Bluetooth
PRODUCT_VENDOR_PROPERTIES += \
    bluetooth.device.class_of_device=90,2,12 \
    bluetooth.profile.asha.central.enabled=true \
    bluetooth.profile.a2dp.source.enabled=true \
    bluetooth.profile.avrcp.target.enabled=true \
    bluetooth.profile.bap.broadcast.assist.enabled=true \
    bluetooth.profile.bap.unicast.client.enabled=true \
    bluetooth.profile.bas.client.enabled=true \
    bluetooth.profile.csip.set_coordinator.enabled=true \
    bluetooth.profile.gatt.enabled=true \
    bluetooth.profile.hap.client.enabled=true \
    bluetooth.profile.hfp.ag.enabled=true \
    bluetooth.profile.hid.device.enabled=true \
    bluetooth.profile.hid.host.enabled=true \
    bluetooth.profile.map.server.enabled=true \
    bluetooth.profile.mcp.server.enabled=true \
    bluetooth.profile.opp.enabled=true \
    bluetooth.profile.pan.nap.enabled=true \
    bluetooth.profile.pan.panu.enabled=true \
    bluetooth.profile.pbap.server.enabled=true \
    bluetooth.profile.sap.server.enabled=true \
    bluetooth.profile.ccp.server.enabled=true \
    bluetooth.profile.vcp.controller.enabled=true \
    persist.bluetooth.a2dp_aac.vbr_supported=true \

