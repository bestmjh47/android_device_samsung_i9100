#
# Copyright (C) 2012 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/galaxys2-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/i9100/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/i9100/bluetooth

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_i9100_defconfig

# assert
TARGET_OTA_ASSERT_DEVICE := galaxys2,i9100,GT-I9100,GT-I9100M,GT-I9100P,GT-I9100T,SC-02C,SHW-M250S,SHW-M250K

# Use the non-open-source parts, if they're present
-include vendor/samsung/i9100/BoardConfigVendor.mk

# TWRP flags
DEVICE_RESOLUTION := 480x800
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CUSTOM_POWER_BUTTON := 116
TW_INCLUDE_FUSE_EXFAT := true
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/galaxys2-common/recovery/graphics.c
TW_MAX_BRIGHTNESS := 255
