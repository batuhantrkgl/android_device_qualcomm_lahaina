#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from lahaina device
$(call inherit-product, device/qualcomm/lahaina/device.mk)

PRODUCT_DEVICE := lahaina
PRODUCT_NAME := twrp_lahaina
PRODUCT_BRAND := qti
PRODUCT_MODEL := Lahaina for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lahaina-user 12 RKQ1.210503.001 1666325248879 release-keys"

BUILD_FINGERPRINT := qti/lahaina/lahaina:12/RKQ1.210503.001/1666325248879:user/release-keys
