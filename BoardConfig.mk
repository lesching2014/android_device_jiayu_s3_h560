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

#######################################################################
### PATH
#######################################################################
FILE_LIST := $(subst /, ,$(abspath $(lastword $(MAKEFILE_LIST))))
NUMBER := $(shell expr $(words $(FILE_LIST)) - 1)
PATH_LIST := $(wordlist 1,$(shell expr $(NUMBER) - 3),$(FILE_LIST))
# Build path
ANDROID_BUILD_TOP :=$(addprefix /,$(subst $(space),/,$(PATH_LIST)))
PATH_LIST := $(wordlist $(shell expr $(NUMBER) - 2),$(NUMBER),$(FILE_LIST))
# Device path
LOCAL_PATH := $(subst $(space),/,$(PATH_LIST))
#LOCAL_PATH := device/jiayu/s3_h560

# CyanogenMod
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/hardware/cmhw
# System.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/configs/system.prop
# sepolicy
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy
# Seccomp filter
BOARD_SECCOMP_POLICY := $(LOCAL_PATH)/seccomp
# Specific Header
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
#######################################################################
###
#######################################################################
# CyanogenMod Hardware Hooks
BOARD_USES_CYANOGEN_HARDWARE := true

# Kernel
TARGET_KMODULES := true
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Ashmem
DISABLE_ASHMEM_TRACKING := true

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
BOARD_MTK_HARDWARE := true
MTK_FM_SUPPORT := yes
MTK_HARDWARE := true
#MTK_ANT_SUPPORT := yes

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# dexpreopt
WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true

# Flags
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# SELinux
WITH_ROOT_METHOD = magisk
#######################################################################
###
#######################################################################
# debug boot
DEBUG_BOOT := true
TARGET_SYSTEM_MINOR := 17

# Seperate vendor
TARGET_COPY_OUT_VENDOR := system/vendor
TARGET_COPY_OUT_VENDOR := vendor

# Device vendor board
ifneq ($(wildcard vendor/jiayu/s3_h560/BoardConfigVendor.mk),)
include vendor/jiayu/s3_h560/BoardConfigVendor.mk
endif

# Device board elements
include $(LOCAL_PATH)/board/*.mk
#######################################################################
