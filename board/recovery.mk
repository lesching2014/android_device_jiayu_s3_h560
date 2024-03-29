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

# Recovery
RECOVERY_VARIANT := twrp
BOARD_NO_SECURE_DISCARD := true # secure discard is painfully slow...
TARGET_USES_EXFAT := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP-specific
ifeq ($(RECOVERY_VARIANT), twrp)
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
DEVICE_RESOLUTION := 1080x1920
#DEVICE_SCREEN_WIDTH := 1080
#DEVICE_SCREEN_HEIGHT := 1920
TW_DEFAULT_BRIGHTNESS := 80
TW_MAX_BRIGHTNESS := 255
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
TW_DEFAULT_EXTERNAL_STORAGE := true

#TW_CUSTOM_POWER_BUTTON := 116
TW_SCREEN_BLANK_ON_BOOT := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
RECOVERY_SDCARD_ON_DATA := true
TW_ALLOW_PARTITION_SDCARD := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_CRYPTO := true
BOARD_HAS_LARGE_FILESYSTEM := true
TW_USE_TOOLBOX := true

TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

#TWRP flags added by patches
TW_CUSTOM_TIME_ZONE_NAME := "TAIST-8;TAIDT"
TW_CUSTOM_TIME_ZONE_OFFSET := 0
#TW_CUSTOM_TIME_ZONE_DST := true
#TW_CUSTOM_NEVER_SHOW_SYSTEM_RO := true
TW_REVERSED_NAVBAR_LAYOUT := true
TW_APP_NO_PROMPT := true

# Misc
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
#TW_DEFAULT_LANGUAGE := en
TW_INCLUDE_NTFS_3G := true
TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_FB2PNG := true

TARGET_RECOVERY_DEVICE_MODULES := tzdata
TW_RECOVERY_ADDITIONAL_RELINK_FILES := $(OUT)/system/usr/share/zoneinfo/tzdata
else
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
endif
