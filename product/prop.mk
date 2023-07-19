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

# Language and Country
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.language=en \
    persist.sys.country=HK \
    persist.sys.timezone=Asia/Hong_Kong
#    persist.sys.timezone=Asia/Shanghai

# Media 
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true
