#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from D1C device
$(call inherit-product, device/fih/D1C/device.mk)

PRODUCT_DEVICE := D1C
PRODUCT_NAME := omni_D1C
PRODUCT_BRAND := FIH
PRODUCT_MODEL := FIH-D1C-FIH
PRODUCT_MANUFACTURER := fih

PRODUCT_GMS_CLIENTID_BASE := android-hmd-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="D1C_00WW_FIH-user 8.1.0 OPR1.170623.026 00WW_5_580 release-keys"

BUILD_FINGERPRINT := FIH/D1C_00WW_FIH/D1C:8.1.0/OPR1.170623.026/00WW_5_580:user/release-keys
