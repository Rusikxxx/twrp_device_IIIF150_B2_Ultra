#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Device specific configs.
$(call inherit-product, device/IIIF150/B2_Ultra/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
PRODUCT_NAME := twrp_B2_Ultra
PRODUCT_DEVICE := B2_Ultra
PRODUCT_BRAND := IIIF150
PRODUCT_MODEL := B2 Ultra
PRODUCT_MANUFACTURER := ANT DAO TECHNOLOGY LIMITED

PRODUCT_GMS_CLIENTID_BASE := android-ragentek
