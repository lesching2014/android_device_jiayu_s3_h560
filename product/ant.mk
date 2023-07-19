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

# Add for ANT+
ifeq ($(strip $(MTK_ANT_SUPPORT)), yes)

BOARD_ANT_WIRELESS_DEVICE :="vfs-prerelease"

PRODUCT_PACKAGES += \
    com.dsi.ant.antradio_library \
    AntHalService \
    ANT_RAM_CODE_E1.BIN \
    ANT_RAM_CODE_E2.BIN
                          
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hardware/ANT/prebuild/libantradio32.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libantradio.so \
    $(LOCAL_PATH)/hardware/ANT/prebuild/libantradio64.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libantradio.so \
    $(LOCAL_PATH)/hardware/ANT/prebuild/antradio_app:$(TARGET_COPY_OUT_SYSTEM)/xbin/antradio_app

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.dsi.ant.antradio_library.xml

endif
