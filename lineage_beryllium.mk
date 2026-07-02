#
# Copyright (C) 2018-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit Device configurations
$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi

#Axion Stuffs
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := false
AXION_CAMERA_REAR_INFO := 12,5
AXION_CAMERA_FRONT_INFO := 20
PRODUCT_NO_CAMERA := false
AXION_MAINTAINER := FogedUser
AXION_PROCESSOR := Snapdragon®_845
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true
HBM_SUPPORTED := false
TARGET_IS_LOW_RAM := false
TARGET_INCLUDES_LOS_PREBUILTS := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="beryllium-user 10 QKQ1.190828.002 V12.0.3.0.QEJMIXM release-keys" \
    BuildFingerprint=Xiaomi/beryllium/beryllium:10/QKQ1.190828.002/V12.0.3.0.QEJMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
