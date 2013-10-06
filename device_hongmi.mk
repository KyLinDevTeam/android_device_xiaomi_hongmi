$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/xiaomi/hongmi/hongmi-vendor.mk)

LOCAL_PATH := device/xiaomi/hongmi
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# copy prebuilt kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# copy Hongmi init files
HM_INIT_FILES := $(wildcard device/xiaomi/hongmi/ramdisk/*)
PRODUCT_COPY_FILES += \
	$(foreach i, $(HM_INIT_FILES), $(i):recovery/root/$(notdir $(i))) 

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := full_hongmi
PRODUCT_DEVICE := hongmi
