#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pipa device
$(call inherit-product, device/xiaomi/pipa/device.mk)

PRODUCT_DEVICE := pipa
PRODUCT_NAME := omni_pipa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 23043RP34G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pipa_global-user 13 RKQ1.211001.001 V14.0.4.0.TMZMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/pipa_global/pipa:13/RKQ1.211001.001/V14.0.4.0.TMZMIXM:user/release-keys
