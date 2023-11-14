# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp config common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/IIIF150/B2_Ultra/device.mk)

# Device identifier
PRODUCT_DEVICE := B2_Ultra
PRODUCT_NAME := twrp_B2_Ultra_eea
PRODUCT_BRAND := IIIF150
PRODUCT_MODEL := B2 Ultra
PRODUCT_MANUFACTURER := ANT DAO TECHNOLOGY LIMITED

# Hide Reflash TWRP
PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    TARGET_DEVICE=B2_Ultra \
#    PRODUCT_NAME=B2_Ultra_eea \
#    PRIVATE_BUILD_DESC="B2_Ultra_eea-user 12 SP1A.210812.016 1694058221 release-keys"

#BUILD_FINGERPRINT := IIIF150/B2_Ultra_eea/B2_Ultra:12/SP1A.210812.016/1694058221:user/release-keys
