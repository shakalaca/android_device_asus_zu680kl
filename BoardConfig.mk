# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8952

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno510

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000

TARGET_PREBUILT_KERNEL := device/asus/A001/kernel

TARGET_LDPRELOAD := libNimsWrap.so

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Recovery
RECOVERY_VARIANT := twrp
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Partitions

# Keymaster
TARGET_PROVIDES_KEYMASTER := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# TWRP-Specific
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_NO_EXFAT_FUSE := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true
#TW_TARGET_USES_QCOM_BSP := true
#TW_NEW_ION_HEAP := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_SUPERSU := true
TW_SCREEN_BLANK_ON_BOOT := true
# for fastboot boot only
#BOARD_HAS_FLIPPED_SCREEN := true

# original path was /sys/devices/soc/900000.qcom,mdss_mdp/900000.qcom,mdss_mdp:qcom,mdss_fb_primary/leds/lcd-backlight/brightness
TW_BRIGHTNESS_PATH := "/sys/devices/soc/900000.qcom\x2cmdss_mdp/900000.qcom\x2cmdss_mdp:qcom\x2cmdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255

TARGET_UNIFIED_DEVICE := true
TARGET_SYSTEM_PROP := device/asus/A001/system.prop
