# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common_tablet.mk)

$(call inherit-product, device/sony/z3tcw/full_z3tcw.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP611
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="SGP611-user 6.0.1 23.5.A.1.291 3706784398 release-keys"

BUILD_FINGERPRINT := \
	"Sony/SGP611/SGP611:6.0.1/23.5.A.1.291/3706784398:user/release-keys"

PRODUCT_NAME := carbon_z3tcw
PRODUCT_DEVICE := z3tcw

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="miloxx"

# force sw keys
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

# WiFi only Tablet
PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only \
    ro.radio.noril=true

# No Ril
BOARD_HAVE_RADIO := false
