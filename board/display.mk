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

# Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Display
USE_OPENGL_RENDERER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# HWC2 by default
#TARGET_USES_HWC2 := true
#VSYNC_EVENT_PHASE_OFFSET_NS := -8000000
#SF_VSYNC_EVENT_PHASE_OFFSET_NS := -8000000
#PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0

BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl/egl.cfg

#dt2w
TARGET_TAP_TO_WAKE_NODE := /sys/devices/bus.2/11007000.I2C0/i2c-0/0-0020/gesture

#PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
#MAX_VIRTUAL_DISPLAY_DIMENSION := 1
#MTK_HWC_SUPPORT := yes
#MTK_HWC_VERSION := 1.4.1
