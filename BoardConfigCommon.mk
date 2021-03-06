#
# Copyright (C) 2016 The Sayanogen Project
# Copyright (C) 2017 The LineageOS Project
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

# inherit from apq8084-common
-include device/samsung/apq8084-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/lentis-common

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Audio
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HWDEP_CAL := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_ROME := true
QCOM_BT_USE_BTNV := true

# Charger
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "charger"
BOARD_CHARGER_ENABLE_SUSPEND := true

# CMHW
BOARD_HARDWARE_CLASS += $(COMMON_PATH)/lineagehw

# Graphics
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Display
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000

# NFC
include $(COMMON_PATH)/nfc/pn547/board.mk

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420

# Power HAL
TARGET_POWERHAL_SET_INTERACTIVE_EXT := $(DEVICE_PATH)/power/power_ext.c

# Radio/RIL
include $(COMMON_PATH)/radio/single/board.mk

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := $(DEVICE_PATH)/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true

# SELinux
include $(DEVICE_PATH)/sepolicy/sepolicy.mk

# Time
BOARD_USES_QC_TIME_SERVICES := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
