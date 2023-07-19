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

# NFC configurations
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/libnfc-brcm.conf \
#    $(LOCAL_PATH)/configs/nfc/nfc.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/nfc.cfg \
#    $(LOCAL_PATH)/configs/nfc/nfcse.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/nfcse.cfg
#    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/nfcee_access.xml

# NFC packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    Nfc \
    Tag
#    libmtknfc_dynamic_load_jni \
#    libnfc_mt6605_jni \

# NFC stack
#PRODUCT_PACKAGES += \
#    nfcstackp

# NFC permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.nfc_extras.xml
