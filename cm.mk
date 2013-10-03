## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := hongmi

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/hongmi/device_hongmi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hongmi
PRODUCT_NAME := cm_hongmi
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := hongmi
PRODUCT_MANUFACTURER := xiaomi
