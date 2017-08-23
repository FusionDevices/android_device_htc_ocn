# Copyright 2017 Android Open Source Project
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

IS_ARM64 := true

# Include Official OTA Package
WITH_OFFICIALOTA := true

# Support Beta OTA Opt-in (Requires additional ota xml)
BETA_OTA := true

# Include pure telephony configuration
$(call inherit-product, vendor/pure/configs/pure_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ocn device
$(call inherit-product, device/htc/ocn/device.mk)


# Set those variables here to overwrite the inherited values.

PRODUCT_DEVICE := ocn
PRODUCT_NAME := ocn
PRODUCT_BRAND := HTC
PRODUCT_MODEL := ocn
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := ocn

TARGET_VENDOR := htc

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440


$(call inherit-product-if-exists, vendor/htc/ocn/ocn-vendor.mk)
