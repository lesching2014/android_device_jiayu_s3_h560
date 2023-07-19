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

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Granular Volume Steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=14 \
    ro.config.media_vol_steps=30

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.kernel.android.checkjni=0 \
    ro.telephony.ril_class=MT6755 \
    ro.telephony.ril.config=fakeiccid \
    ro.com.android.mobiledata=false \
    ro.sys.sdcardfs=true
#    ro.secure=0 \
#    ro.adb.secure=0 \
#    camera.disable_zsl_mode=1 \
#    persist.service.acm.enable=0 \
#    persist.sys.dun.override=0 \
#    ro.allow.mock.location=0 \
#    ro.debuggable=1 \
#    ro.dalvik.vm.native.bridge=0 \
#    ro.mount.fs=ext4 \
#    ro.oem_unlock_supported=1 \

# Ims
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.mtk_ims_support=1 \
#    ro.mtk_volte_support=1 \
#    persist.mtk.volte.enable=1 \
#    ro.mtk_vilte_support=1 \
#    persist.mtk.ims.video.enable=1 \
#    ro.mtk_vilte_ut_support=0 \
#    persist.mtk_dynamic_ims_switch=1
   
# Language and Country
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.language=en \
    persist.sys.country=HK \
    persist.sys.timezone=Asia/Hong_Kong
#    persist.sys.timezone=Asia/Shanghai

# Media 
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0
#    media.stagefright.legacyencoder=true \
#    media.stagefright.less-secure=true

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true
