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

# Platform
TARGET_BOARD_PLATFORM := exynos3
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos3475

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/j2lte/egl/egl.cfg

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal3475

#Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_BOARD := SYSMAGIC000K 	
BOARD_KERNEL_PAGESIZE := 2048

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/j2lte/dtb.img

#TARGET_KERNEL_CONFIG := cm_j2lteswa_00_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/j2lte
PRODUCT_COPY_FILES += device/samsung/j2lte/prebuilt_kernel:kernel

#Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x360000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x360000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x30000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x130000000
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal3475
TARGET_OTA_ASSERT_DEVICE := j2lte,j2ltedd

# PowerHAL
TARGET_POWERHAL_VARIANT := exynos3

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
