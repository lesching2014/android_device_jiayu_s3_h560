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

# Teamwin magisk prebuilt
ifneq ($(wildcard external/magisk-prebuilt/Android.mk),)
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP_PREBUILT := true
TW_INCLUDE_RESETPROP_SOURCE := true
TW_INCLUDE_LIBRESETPROP_SOURCE := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP := true
endif

# Magisk
ifneq ($(wildcard vendor/magisk/Android.mk),)
PRODUCT_PACKAGES += \
    99-magisk
endif
