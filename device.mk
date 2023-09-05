#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

FILE_LIST := $(subst /, ,$(abspath $(lastword $(MAKEFILE_LIST))))
NUMBER := $(shell expr $(words $(FILE_LIST)) - 1)
PATH_LIST := $(wordlist 1,$(shell expr $(NUMBER) - 3),$(FILE_LIST))
# Build path
ANDROID_BUILD_TOP :=$(addprefix /,$(subst $(space),/,$(PATH_LIST)))
PATH_LIST := $(wordlist $(shell expr $(NUMBER) - 2),$(NUMBER),$(FILE_LIST))
# Device path
LOCAL_PATH := $(subst $(space),/,$(PATH_LIST))
#LOCAL_PATH := device/jiayu/s3_h560

MTK_ANT_SUPPORT := yes

# Device uses high-density artwork where available 
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
#PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi 480dpi hdpi tvdpi mdpi ldpi

# Soong namespaces
#PRODUCT_SOONG_NAMESPACES += \
#    $(LOCAL_PATH)

#PRODUCT_ENFORCE_RRO_TARGETS := \
#    framework-res

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay
#    $(LOCAL_PATH)/overlay-lineage

#TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Manifest
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/configs/manifest/manifest.xml:$(TARGET_COPY_OUT_VENDOR)/manifest.xml \
#    $(LOCAL_PATH)/configs/manifest/framework_manifest.xml:$(TARGET_COPY_OUT_VENDOR)/framework_manifest.xml

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Vendor product configurations
$(call inherit-product-if-exists, vendor/jiayu/s3_h560/s3_h560-vendor.mk)

# Device product elements
include $(LOCAL_PATH)/product/*.mk
