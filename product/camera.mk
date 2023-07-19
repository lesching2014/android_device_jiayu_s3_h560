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

# Camera configurations
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/hardware/camera/camerasize.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/camerasize.xml

# Camera HAL
#PRODUCT_PACKAGES += \
#    camera.device@1.0-impl \
#    camera.device@3.2-impl \
#    android.hardware.camera.provider@2.4-impl \
#    android.hardware.camera.provider@2.4-service

# Camera packages
PRODUCT_PACKAGES += \
    libcamera_parameters_ext \
    Snap
#    libcamera_parameters_mtk \
#    libcam.client \
#    libmmsdkservice.feature \

# Snap
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# Camera legacy
#PRODUCT_PACKAGES += \
#    fs_config_files

# Camera permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.front.xml
#    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.xml \
#    frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.manual_sensor.xml
