#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/samsung/dm1q/device.mk)

# Inherit from the Lineage configuration.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
BLAZE_MAINTAINER := J0SH1X
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS := true

PRODUCT_NAME := blaze_dm1q
PRODUCT_DEVICE := dm1q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-S9110
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dm1qxxx-user 14 UP1A.231005.007 S911BXXS6CXFE release-keys"

BUILD_FINGERPRINT := samsung/dm1qxxx/qssi:14/UP1A.231005.007/S911BXXS6CXFE:user/release-keys
