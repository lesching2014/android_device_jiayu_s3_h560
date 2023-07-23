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

# Releasetools
ifneq ($(wildcard $(LOCAL_PATH)/scripts/releasetools.py),)
# Vendor partition packages
#PRODUCT_PACKAGES += \
#   resize2fs_static \
#   toybox_mt6752 \
#   mke2fs_mt6752 \
#   e2fsck_mt6752 \
#   sgdisk_mt6752

# Vendor partition script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/scripts/vendor.sh:install/bin/vendor.sh
endif
