$(call inherit-product, build/target/product/embedded.mk)

# Inherit from coolpad_C558 device
$(call inherit-product, device/coolpad/C558/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_DEVICE := C558
PRODUCT_NAME := omni_C558
PRODUCT_BRAND := Coolpad
PRODUCT_MODEL := C558
PRODUCT_MANUFACTURER := Coolpad

# ADB Fix
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.aio_compat=true

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
