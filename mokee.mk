## Specify phone tech before including full_phone
$(call inherit-product, vendor/mk/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/mk/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geeb_ca/full_geeb_ca.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geeb_ca
PRODUCT_NAME := mk_geeb_ca
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E973
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/GEEB_CA:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="gee-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
