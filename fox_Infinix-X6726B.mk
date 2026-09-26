# Inherit from the generic OrangeFox configuration
$(call inherit-product, vendor/otrp/config/twrp.mk)

# Include boot control configurations for Virtual A/B slots
$(call inherit-product, vendor/otrp/config/boot_control.mk)

# Inherit from Infinix-X6726B device configurations
$(call inherit-product, device/infinix/Infinix-X6726B/device.mk)

# Device Identity
PRODUCT_DEVICE := Infinix-X6726B
PRODUCT_NAME := fox_Infinix-X6726B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Hot 60 5G
PRODUCT_MANUFACTURER := infinix

# Force Vendor Boot Output (Required for Hot 60 5G)
PRODUCT_BUILD_VENDOR_BOOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := false

# OrangeFox Branding Specs
FOX_BUILD_TYPE := Unofficial
FOX_VERSION := R11.1

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_x6726_p526-user 12 SP1A.210812.016 993339 release-keys"

BUILD_FINGERPRINT := Infinix/X6726B-OP/Infinix-X6726B:12/SP1A.210812.016/260716V1971:user/release-keys
