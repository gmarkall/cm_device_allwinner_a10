# Release name
PRODUCT_RELEASE_NAME := A10

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/a10/full_a10.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a10
PRODUCT_NAME := cm_a10
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := A10
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=a10 BUILD_ID=ICL53F BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT="google/yakju/maguro:4.0.2/ICL53F/235179:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.0.2 ICL53F 235179 release-keys"
