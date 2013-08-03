## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := geeb_ca

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geeb_ca/full_geeb_ca.mk)

# Inherit led flash settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geeb_ca
PRODUCT_NAME := slim_geeb_ca
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E973
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/GEEB_CA:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="gee-user 4.2.2 JDQ39 573038 release-keys"
