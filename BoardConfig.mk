# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the common shinano definitions
include device/sony/shinano-common/BoardConfigCommon.mk

# inherit from the proprietary version
#-include vendor/sony/z3tcw/BoardConfigVendor.mk

DEVICE_PATH := device/sony/z3tcw

# Assert
TARGET_OTA_ASSERT_DEVICE := SGP611,z3tcw,scorpion_windy

TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw

# Kernel properties
TARGET_KERNEL_CONFIG := lineageos_shinano_scorpion_windy_defconfig

# Snapdragon compiler
TARGET_USE_SDCLANG := true

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 26
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12253641728

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Device-specific props
TARGET_SYSTEM_PROP += device/sony/z3tcw/system.prop

# D2TW
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"
