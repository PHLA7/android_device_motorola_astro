#
# Copyright (C) 2017-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# TODO: add this file
# Inherit from astro device
#$(call inherit-product, device/motorola/astro/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_astro
PRODUCT_DEVICE := astro
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola One Fusion
PRODUCT_MANUFACTURER := motorola

#TODO: configure boot animation
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "motorola/astro_retail/astro:11/RPL31.Q2-63-10-2/50a5c:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=astro_retail \
    PRIVATE_BUILD_DESC="astro_retail-user 11 RPL31.Q2-63-10-2 50a5c release-keys"

#TODO: what is that
PRODUCT_GMS_CLIENTID_BASE := android-motorola
