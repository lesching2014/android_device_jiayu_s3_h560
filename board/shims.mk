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

# Include needed symbols
TARGET_INCLUDE_XLOG_SYMBOLS := true
TARGET_INCLUDE_AUDIO_SYMBOLS := true
TARGET_INCLUDE_UI_SYMBOLS := true
TARGET_INCLUDE_OMX_SYMBOLS := true
TARGET_INCLUDE_GPS_SYMBOLS := true
#TARGET_INCLUDE_GUI_SYMBOLS := true
#TARGET_INCLUDE_CAMERA_SYMBOLS := true

#include $(TARGET_COPY_OUT_VENDOR)/mad/config/symbols.mk

# Shims
#TARGET_LD_SHIM_LIBS := \
#	/$(TARGET_COPY_OUT_SYSTEM)/lib/liblog.so|/$(TARGET_COPY_OUT_VENDOR)/lib/libshim_xlog.so \
#	/$(TARGET_COPY_OUT_SYSTEM)/lib64/liblog.so|/$(TARGET_COPY_OUT_VENDOR)/lib64/libshim_xlog.so \
#	/$(TARGET_COPY_OUT_SYSTEM)/lib/libgui.so|/$(TARGET_COPY_OUT_VENDOR)/lib/libmtkshim_gui.so \
#	/$(TARGET_COPY_OUT_SYSTEM)/lib64/libgui.so|/$(TARGET_COPY_OUT_VENDOR)/lib64/libmtkshim_gui.so \
#	/$(TARGET_COPY_OUT_VENDOR)/lib/hw/audio.primary.$(platform).so|/$(TARGET_COPY_OUT_VENDOR)/lib/libmtkshim_audio.so \
#	/$(TARGET_COPY_OUT_VENDOR)/lib64/hw/audio.primary.$(platform).so|/$(TARGET_COPY_OUT_VENDOR)/lib64/libmtkshim_audio.so \
#	/$(TARGET_COPY_OUT_VENDOR)/lib/libcam.camadapter.so|/$(TARGET_COPY_OUT_VENDOR)/lib/libmtkshim_camera.so \
#	/$(TARGET_COPY_OUT_VENDOR)/lib64/libcam.camadapter.so|/$(TARGET_COPY_OUT_VENDOR)/lib64/libmtkshim_camera.so \
#	/$(TARGET_COPY_OUT_SYSTEM)/lib/libui.so|/$(TARGET_COPY_OUT_VENDOR)/lib/libmtkshim_ui.so \
#	/$(TARGET_COPY_OUT_SYSTEM)/lib64/libui.so|/$(TARGET_COPY_OUT_VENDOR)/lib64/libmtkshim_ui.so \
#	/$(TARGET_COPY_OUT_VENDOR)/lib/libcam.camnode.so|/$(TARGET_COPY_OUT_VENDOR)/lib/libmtkshim_camera.so \
#	/$(TARGET_COPY_OUT_VENDOR)/lib64/libcam.camnode.so|/$(TARGET_COPY_OUT_VENDOR)/lib64/libmtkshim_camera.so
