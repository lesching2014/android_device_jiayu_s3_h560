# opengapps
ifneq ($(wildcard vendor/opengapps/build/opengapps-packages.mk),)
GAPPS_VARIANT := stock
GAPPS_PRODUCT_PACKAGES += \
                          EditorsDocs \
                          EditorsSheets \
                          EditorsSlides \
                          Wallet
GAPPS_EXCLUDED_PACKAGES := \
                           AndroidAuto \
                           Books \
                           Hangouts \
                           GoogleNow \
                           Music2 \
                           Newsstand \
                           PlayGames \
                           YouTube \
                           Videos \
                           TV
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
endif
