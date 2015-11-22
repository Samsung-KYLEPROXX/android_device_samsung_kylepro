USE_CAMERA_STUB := true

# Inherit from the proprietary version
-include vendor/samsung/kylepro/BoardConfigVendor.mk

# Platform
TARGET_ARCH                                 := arm
TARGET_NO_BOOTLOADER                        := true
TARGET_BOARD_PLATFORM                       := hawaii
TARGET_CPU_ABI                              := armeabi-v7a
TARGET_CPU_ABI2                             := armeabi
TARGET_ARCH_VARIANT                         := armv7-a-neon
TARGET_CPU_VARIANT                          := cortex-a9
TARGET_CPU_SMP                              := true
ARCH_ARM_HAVE_ARMV7A                        := true
ARCH_ARM_HAVE_VFP                           := true
ARCH_ARM_HAVE_TLS_REGISTER                  := true
ARCH_ARM_HAVE_NEON                          := true
TARGET_BOOTLOADER_BOARD_NAME                := hawaii
TARGET_GLOBAL_CFLAGS                        += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS                      += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Assert
TARGET_OTA_ASSERT_DEVICE                    := kylepro,S7580,GT-S7580,hawaii,kylexx

# Kernel
BOARD_MKBOOTIMG_ARGS                        := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_CMDLINE                        :=
BOARD_KERNEL_BASE                           := 0x82000000
BOARD_KERNEL_PAGESIZE                       := 4096
BOARD_KERNEL_OFFSET                         := 0x00008000
BOARD_KERNEL_TAGS_OFFSET                    := 0x00000100
BOARD_RAMDISK_OFFSET                        := 0x01000000
TARGET_KERNEL_CONFIG                        := bcm21664_hawaii_ss_kylepro_rev00_cyanogenmod_defconfig
TARGET_KERNEL_SOURCE                        := kernel/samsung/kyleproxx
TARGET_KERNEL_CUSTOM_TOOLCHAIN              := arm-eabi-4.6

# Use the CM PowerHAL
TARGET_USES_CM_POWERHAL                     := true
CM_POWERHAL_EXTENSION                       := hawaii
TARGET_POWERHAL_VARIANT                     := cm

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE              := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE          := 9191424
BOARD_SYSTEMIMAGE_PARTITION_SIZE            := 1210769408
BOARD_USERDATAIMAGE_PARTITION_SIZE          := 2373976064
BOARD_CACHEIMAGE_PARTITION_SIZE             := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE           := ext4
BOARD_FLASH_BLOCK_SIZE                      := 262144

# Bluetooth
BOARD_HAVE_BLUETOOTH                        := true
BOARD_HAVE_BLUETOOTH_BCM                    := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/kylepro/bluetooth
BOARD_BLUEDROID_VENDOR_CONF                 := device/samsung/kylepro/bluetooth/libbt_vndcfg_s7580.txt

# Connectivity - Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI                     := true
WPA_BUILD_SUPPLICANT                        := true
BOARD_WPA_SUPPLICANT_DRIVER                 := NL80211
WPA_SUPPLICANT_VERSION                      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB            := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER                        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB                   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                           := bcmdhd
BOARD_WLAN_DEVICE_REV                       := bcm4330_b1
WIFI_DRIVER_FW_PATH_PARAM                   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA                     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP                      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH                     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME                     := "dhd"
WIFI_DRIVER_MODULE_ARG                      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG                   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                                   := 802_11_ABG

# Resolution
TARGET_SCREEN_HEIGHT                        := 800
TARGET_SCREEN_WIDTH                         := 480

# Hardware rendering
USE_OPENGL_RENDERER                         := true
BOARD_USE_MHEAP_SCREENSHOT                  := true
BOARD_EGL_WORKAROUND_BUG_10194508           := true
TARGET_USES_ION                             := true
HWUI_COMPILE_FOR_PERF                       := true
COMMON_GLOBAL_CFLAGS                        += -DNEEDS_VECTORIMPL_SYMBOLS -DHAWAII_HWC -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK       := true

# Enable WEBGL in WebKit
ENABLE_WEBGL                                := true

# External apps on SD
TARGET_EXTERNAL_APPS                        := sdcard1

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT                     := true

# OpenGL
BOARD_USES_HWCOMPOSER                       := true
BOARD_USE_BGRA_8888                         := true

# Audio
BOARD_USES_ALSA_AUDIO                       := true

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
    WITH_DEXPREOPT                          := true
endif

# BootAnimation
TARGET_BOOTANIMATION_PRELOAD                := true
TARGET_BOOTANIMATION_TEXTURE_CACHE          := true

# Charger
BOARD_BATTERY_DEVICE_NAME                   := battery
BOARD_CHARGER_ENABLE_SUSPEND                := true
BOARD_CHARGER_SHOW_PERCENTAGE               := true
BOARD_CHARGING_MODE_BOOTING_LPM             := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH                       := "/sys/class/power_supply/battery/batt_lp_charging"
BACKLIGHT_PATH                              := "/sys/class/backlight/panel/brightness"

# healthd
BOARD_HAL_STATIC_LIBRARIES                  := libhealthd-kylepro.hawaii

# RIL
BOARD_RIL_CLASS                             := ../../../device/samsung/kylepro/ril/

# Recovery
TARGET_RECOVERY_FSTAB                       := device/samsung/kylepro/ramdisk/fstab.hawaii_ss_kylepro
TARGET_USE_CUSTOM_LUN_FILE_PATH             := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON                  := true
BOARD_HAS_LARGE_FILESYSTEM                  := true
TARGET_USERIMAGES_USE_EXT4                  := true
TARGET_RECOVERY_PIXEL_FORMAT                := BGRA_8888
BOARD_HAS_NO_MISC_PARTITION                 := true
BOARD_RECOVERY_HANDLES_MOUNT                := true
BOARD_USES_MMCUTILS                         := true
BOARD_HAS_DOWNLOAD_MODE                     := true
BOARD_USE_USB_MASS_STORAGE_SWITCH           := true
BOARD_SUPPRESS_EMMC_WIPE                    := true
TARGET_RECOVERY_DENSITY                     := hdpi

# TWRP
#TARGET_RECOVERY_FSTAB                       := device/samsung/kylepro/ramdisk/twrp.fstab.hawaii_ss_kylepro
DEVICE_RESOLUTION                           := 480x800
TW_MAX_BRIGHTNESS                           := 255
TW_CUSTOM_BATTERY_PATH                      := /sys/class/power_supply/battery
TW_BRIGHTNESS_PATH                          := /sys/class/backlight/panel/brightness
RECOVERY_SDCARD_ON_DATA                     := true
TW_NO_REBOOT_BOOTLOADER                     := true
RECOVERY_GRAPHICS_USE_LINELENGTH            := true
TW_INTERNAL_STORAGE_PATH                    := /data/media
TW_INTERNAL_STORAGE_MOUNT_POINT             := data
TW_EXTERNAL_STORAGE_PATH                    := /external_sd
TW_EXTERNAL_STORAGE_MOUNT_POINT             := external_sd
TW_DEFAULT_EXTERNAL_STORAGE                 := true
TW_EXCLUDE_SUPERSU                          := true
BOARD_HAS_NO_REAL_SDCARD                    := true
HAVE_SELINUX                                := true

# Vold
BOARD_UMS_LUNFILE                           := /sys/class/android_usb/f_mass_storage/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH             := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR            := true
BOARD_VOLD_MAX_PARTITIONS                   := 19

# MTP
BOARD_MTP_DEVICE                            := /dev/mtp_usb

# CMHW
BOARD_HARDWARE_CLASS                        := hardware/samsung/cmhw/ device/samsung/kylepro/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH                 := device/samsung/kylepro/include

# Compat
TARGET_USES_LOGD                            := false

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/kylepro/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    bkmgrd.te \
    device.te \
    surfaceflinger.te \
    bluetooth.te \
    geomagneticd.te \
    gpsd.te \
    init.te \
    immvibed.te \
    kernel.te \
    macloader.te \
    rild.te \
    shell.te \
    system_server.te
