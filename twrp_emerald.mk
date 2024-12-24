#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from emerald device
$(call inherit-product, device/xiaomi/emerald/device.mk)

PRODUCT_DEVICE := emerald
PRODUCT_NAME := twrp_emerald
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := emerald
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="emerald-user 12 TP1A.220624.014 V14.0.1.0.TNFEUXM release-keys"

BUILD_FINGERPRINT := Redmi/emerald/emerald:12/TP1A.220624.014/V14.0.1.0.TNFEUXM:user/release-keys
