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

# Ramdisk configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.mt6752:root/fstab.mt6752 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6752.rc:root/init.mt6752.rc \
    $(LOCAL_PATH)/rootdir/init.mt6752.usb.rc:root/init.mt6752.usb.rc \
    $(LOCAL_PATH)/rootdir/init.performance.rc:root/init.performance.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6752.rc:root/ueventd.mt6752.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.mt6752.rc:root/init.recovery.mt6752.rc

#    $(LOCAL_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
#    $(LOCAL_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
#    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
#    $(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
#    $(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \

# Ramdisk packages
#PRODUCT_PACKAGES += \
#    ueventd.mt6752.rc \
#    init.recovery.mt6752.rc

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
#    $(LOCAL_PATH)/rootdir/fstab.charger:root/fstab.charger \
#    $(LOCAL_PATH)/rootdir/init.microtrust.rc:root/init.microtrust.rc \
#    $(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
#    $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
#    $(LOCAL_PATH)/rootdir/init.ssd.rc:root/init.ssd.rc \
