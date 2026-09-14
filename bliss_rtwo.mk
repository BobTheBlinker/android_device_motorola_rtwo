#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit some common BlissROM stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Maintainer overlay
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := bliss_rtwo
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 pro

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rtwo_g-user 16 W1TRS36H.56-13-1-3 cb3b97-65907 release-keys MW-419" \
    BuildFingerprint=motorola/rtwo_g/rtwo:16/W1TRS36H.56-13-1-3/cb3b97-65907:user/release-keys \
    DeviceProduct=rtwo_g
