# Define Local path
LOCAL_PATH := device/samsung/j2lte

# Vendorname
BOARD_VENDOR := samsung

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

# Platform
TARGET_BOARD_PLATFORM := exynos3
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos3475

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/j2lte/egl/egl.cfg

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal3475
TARGET_NO_BOOTLOADER := true

#Kernel
# Filesystems
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true

# Include path
TARGET_SPECIFIC_HEADER_PATH += device/samsung/j2lte/include

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/j2lte/dt.img

# Kernel
KERNEL_TOOLCHAIN := /opt/toolchains/arm-linux-eabi-UB-5.3/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
TARGET_KERNEL_CONFIG := j2lte_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j2lte

# CMHW
BOARD_HARDWARE_CLASS := device/samsung/j2lte/cmhw
# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/j2lte/bluetooth

#Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x360000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x360000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x30000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x130000000
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal3475
TARGET_OTA_ASSERT_DEVICE := j2lte,j2ltedd

# Audio
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/j2lte/bluetooth/vnd_smdk3475.txt

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/j2lte/egl/egl.cfg

# PowerHAL
TARGET_POWERHAL_VARIANT := exynos3

# Sensors
TARGET_PROVIDES_LIBSENSORS := true

# GUI
BOARD_EGL_NEEDS_HANDLE_VALUE := true

# Pre-L Compatibility
TARGET_GLOBAL_CFLAGS += \
    -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL \
    -DENABLE_NON_PIE_SUPPORT

# Legacy MMAP for pre-lollipop blobs
# (needed by mcDriverDaemon which in turn is needed by cbd)
BOARD_USES_LEGACY_MMAP := true

# Media
TARGET_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL # acquire_buffer symbol for libwvm.so

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"
BOARD_MODEM_TYPE := ss222

# Radio
BOARD_RIL_CLASS := ../../../device/samsung/j2lte/ril

# WFD
BOARD_USES_WFD_SERVICE := true

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/j2lte
TARGET_RECOVERY_FSTAB := device/samsung/j2lte/rootdir/etc/fstab.universal3475
BOARD_HAS_LARGE_FILESYSTEM := true

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_${BOARD_WLAN_DEVICE}
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_${BOARD_WLAN_DEVICE}
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin"

# TWRP
#ifeq ($(TARGET_BUILD_VARIANT),userdebug)
#RECOVERY_VARIANT := twrp
#endif

RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_SCREEN_BLANK := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_CRYPTO := true
#TW_USE_TOOLBOX := true
TWRP_INCLUDE_LOGCAT := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
