
# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_tablet_wifionly.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/cm/config/telephony.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/device.mk)
$(call inherit-product-if-exists, vendor/asus/deb/device-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := lineage_deb
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razorg \
    BUILD_FINGERPRINT=google/razorg/deb:6.0.1/MOB30X/3036618:user/release-keys \
    PRIVATE_BUILD_DESC="razorg-user 6.0.1 MOB30X 3036618 release-keys"
