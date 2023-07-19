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

# Platform
TARGET_BOARD_PLATFORM := mt6752
TARGET_BOOTLOADER_BOARD_NAME := mt6752
#TARGET_BOARD_PLATFORM_GPU := mali-t760
#TARGET_SOC := mt6752

# Images
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
#TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT := cortex-a53
#TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Architecture Extensions
#ARCH_ARM_HAVE_NEON := true
#ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_CORTEX_A53 := true
#TARGET_SOC := mt6753

#TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
#TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
#TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
#TARGET_SUPPORTS_32_BIT_APPS := true
#TARGET_SUPPORTS_64_BIT_APPS := true

TARGET_USES_EARLY_SUSPEND := true

# Legacy blobs
#TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# split properties
#BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# custom libinit
#TARGET_INIT_VENDOR_LIB := libinit_s3_h560

# Use stock RIL stack
#ENABLE_VENDOR_RIL_SERVICE := true
#BOARD_PROVIDES_LIBRIL := true

# Allow duplicate rules
#BUILD_BROKEN_DUP_RULES := true

#ENABLE_SCHEDBOOST := true

# Custom RenderScript
#OVERRIDE_RS_DRIVER := libRSDriver_mtk.so

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true
