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

# Mediatek
PRODUCT_PACKAGES += \
    libstlport

PRODUCT_PACKAGES += \
    libbt-vendor

PRODUCT_PACKAGES += \
   libccci_util
   
# Doze
PRODUCT_PACKAGES += \
     MeizuDoze

#opengl
PRODUCT_PACKAGES += \
    libGLES_android

# Basic apps
PRODUCT_PACKAGES += \
    Torch \
    Snap

# Messaging
PRODUCT_PACKAGES += \
    messaging \
    Stk

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# ThemeInterfacer
PRODUCT_PACKAGES += \
    ThemeInterfacer

# Eleven
PRODUCT_PACKAGES += \
    Eleven


# MTK Logging functions
#PRODUCT_PACKAGES += \
#    liblog_mtk

#PRODUCT_COPY_FILES += \
#     frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
#    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
#    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.xml \
#    frameworks/native/data/etc/android.hardware.touchscreen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.xml \
#    frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.faketouch.xml \
#    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.sip.voip.xml \
#    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
#    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.cdma.xml \
#    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.gsm.xml
    
# Keymaster HAL
#PRODUCT_PACKAGES += \
#    android.hardware.keymaster@3.0-impl

# Health HAL
#PRODUCT_PACKAGES += \
#    android.hardware.health@2.0-service

# Neural
#PRODUCT_PACKAGES += \
#    android.hardware.neuralnetworks@1.1-service-armnn

# Configstore
#PRODUCT_PACKAGES += \
#    android.hardware.configstore@1.1-service

# GNSS HAL
#PRODUCT_PACKAGES += \
#    android.hardware.gnss@1.0-impl \
#    android.hardware.gnss@1.0-service
# RIL
#PRODUCT_PACKAGES += \
#   libccci_util

# Trusted face
#PRODUCT_PACKAGES += \
#    libprotobuf-cpp-full

# NVRAM
#PRODUCT_PACKAGES += \
#    libnvram

# Managers
#PRODUCT_PACKAGES += \
#    hwservicemanager \
#    vndservicemanager \
#    servicemanager

# Fingerprint
#PRODUCT_PACKAGES += \
#    android.hardware.biometrics.fingerprint@2.0-service

# Vibrator
#PRODUCT_PACKAGES += \
#    android.hardware.vibrator@1.0-service.mtk

# Mediatek
#PRODUCT_PACKAGES += \
#    libstlport

# DRM
#PRODUCT_PACKAGES += \
#     android.hardware.drm@1.1-service.clearkey \
#     android.hardware.drm@1.0-impl \
#     android.hardware.drm@1.0-service

# RenderScript
#PRODUCT_PACKAGES += \
#    android.hardware.renderscript@1.0-impl

# Graphics
#PRODUCT_PACKAGES += \
#    android.hardware.graphics.allocator@2.0-impl \
#    android.hardware.graphics.allocator@2.0-service \
#    android.hardware.graphics.composer@2.1-impl \
#    android.hardware.memtrack@1.0-impl \
#    android.hardware.graphics.mapper@2.0-impl

#PRODUCT_PACKAGES += \
#    libui_ext \
#    libgralloc_extra \
#    libgui_ext

# Lineage services
#PRODUCT_PACKAGES += \
#    vendor.lineage.touch@1.0-service.lenovo \
#    vendor.lineage.trust@1.0-service

# Combo
#PRODUCT_PACKAGES += \
#    wmt_loader

# IMS
#PRODUCT_PACKAGES += \
#    okhttp \
#    ims-config \
#    ImsService \
#    Simservs \
#    xcap \
#    wfo-common \
#    libwfo_jni \
#    WfoService

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/ims/telephony_mediatek-ims_privapp-permissions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/telephony_mediatek-ims_privapp-permissions.xml	
    
    
    # Configurations
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/configs/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml \
#    $(LOCAL_PATH)/configs/ecc_list.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/ecc_list.xml \
#    $(LOCAL_PATH)/configs/spn-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/spn-conf.xml

# Radio dependencies
#PRODUCT_PACKAGES += \
#    muxreport \
#    terservice
