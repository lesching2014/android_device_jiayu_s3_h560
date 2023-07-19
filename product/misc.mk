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
