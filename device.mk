
LOCAL_PATH := device/samsung/j3xnlte

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/j3xnlte/j3xnlte-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/j3xnlte/overlay

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_hw.xml:system/etc/audio_hw.xml \
    $(LOCAL_PATH)/configs/audio/audio_para:system/etc/audio_para \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/codec_pga.xml:system/etc/codec_pga.xml \
    $(LOCAL_PATH)/configs/audio/tiny_hw.xml:system/etc/tiny_hw.xml

# modules symlinks
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietaries/system/lib/modules/autotst.ko:system/lib/modules/autotst.ko \
    $(LOCAL_PATH)/proprietaries/system/lib/modules/mali.ko:system/lib/modules/mali.ko \
    $(LOCAL_PATH)/proprietaries/system/lib/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    $(LOCAL_PATH)/proprietaries/system/lib/modules/sprdwl.ko:system/lib/modules/sprdwl.ko \

# BT configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/iop_bt.db:system/etc/bluetooth/iop_bt.db \
    $(LOCAL_PATH)/configs/bluetooth/iop_device_list.conf:system/etc/bluetooth/iop_device_list.conf

# Media Profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/headset-keyboard.kl:system/usr/keylayout/headset-keyboard.kl \
    $(LOCAL_PATH)/keylayout/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl \
    $(LOCAL_PATH)/keylayout/sprd-eic-keys.kl:system/usr/keylayout/sprd-eic-keys.kl \
    $(LOCAL_PATH)/keylayout/sprd-gpio-keys.kl:system/usr/keylayout/sprd-gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
    $(LOCAL_PATH)/keylayout/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc

# Proprietaries drm
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/proprietaries/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
#    $(LOCAL_PATH)/proprietaries/system/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
#    $(LOCAL_PATH)/proprietaries/system/lib/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
#    $(LOCAL_PATH)/proprietaries/system/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
#    $(LOCAL_PATH)/proprietaries/system/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so \
#    $(LOCAL_PATH)/proprietaries/system/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
#    $(LOCAL_PATH)/proprietaries/system/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
#    $(LOCAL_PATH)/proprietaries/system/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so

# Proprietaries libomx
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietaries/system/lib/libomx_avcdec_hw_sprd.so:system/lib/libomx_avcdec_hw_sprd.so \
    $(LOCAL_PATH)/proprietaries/system/lib/libomx_avcdec_sw_sprd.so:system/lib/libomx_avcdec_sw_sprd.so \
    $(LOCAL_PATH)/proprietaries/system/lib/libomx_avcenc_hw_sprd.so:system/lib/libomx_avcenc_hw_sprd.so \
    $(LOCAL_PATH)/proprietaries/system/lib/libomx_m4vh263dec_hw_sprd.so:system/lib/libomx_m4vh263dec_hw_sprd.so \
    $(LOCAL_PATH)/proprietaries/system/lib/libomx_m4vh263dec_sw_sprd.so:system/lib/libomx_m4vh263dec_sw_sprd.so \
    $(LOCAL_PATH)/proprietaries/system/lib/libomx_m4vh263enc_hw_sprd.so:system/lib/libomx_m4vh263enc_hw_sprd.so \
    $(LOCAL_PATH)/proprietaries/system/lib/libomx_mp3dec_sprd.so:system/lib/libomx_mp3dec_sprd.so \
    $(LOCAL_PATH)/proprietaries/system/lib/libomx_vpxdec_hw_sprd.so:system/lib/libomx_vpxdec_hw_sprd.so

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
persist.sys.usb.config=mtp,adb

# TinyAlsa utils
PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo

# Misc. libs
PRODUCT_PACKAGES += \
    libsecril-client \
    libstlport \
    libboringssl-compat

# MDNIE
PRODUCT_PACKAGES += \
    AdvancedDisplay

# Samsung
PRODUCT_PACKAGES += \
    SamsungServiceMode \
    Torch

# Filesystem
PRODUCT_PACKAGES += \
    fsck.f2fs

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Misc
PRODUCT_PACKAGES += \
    libxml2 \
    Stk

# SeLinux
PRODUCT_PACKAGES += \
    file_contexts \
    property_contexts \
    seapp_contexts \
    service_contexts \
    selinux_version

# NFC packages
PRODUCT_PACKAGES += \
    libnfc_nci \
    NfcNci \
    Tag \
    com.android.nfc_extras

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# WPA supplicant
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    macloader \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant/mcs.ini:system/etc/wifi/mcs.ini \
    $(LOCAL_PATH)/configs/wpa_supplicant/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Usb accessory
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Misc other modules
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.sc8830 \
    init.board.rc \
    init.recovery.board.rc \
    init.cali.rc \
    init.j3xnlte.rc \
    init.j3xnlte_base.rc \
    init.rilchip.rc \
    init.rilcommon.rc \
    init.sc8830.rc \
    init.sc8830.usb.rc \
    init.sc8830_ss.rc \
    init.wifi.rc \
    ueventd.sc8830.rc \
    sswap

# e2fsprog
PRODUCT_PACKAGES += \
    e2fsck \
    blkid \
    resize2fs

# strongSwan
PRODUCT_PACKAGES += \
    charon \
    libcharon \
    libhydra \
    libstrongswan

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/strongswan/strongswan.conf:system/etc/strongswan.conf

# libexifa, libjpega, libexif
PRODUCT_PACKAGES += \
    libexif \
    libexifa \
    libjpega 

# KeyUtils
PRODUCT_PACKAGES += \
    libkeyutils
    
#libdmverity_hashgen
PRODUCT_PACKAGES += \
    libdmverity_hashgen  
 
# dm_verity_hash
PRODUCT_PACKAGES += \
    dm_verity_hash

PRODUCT_PACKAGES += \
    charge \
    charge_res_images

PRODUCT_PACKAGES += \
    libgps_shim

PRODUCT_PACKAGES += \
    libsecril-client \
    power.sc8830 \
    lights.sc8830 \
    hwcomposer.sc8830 \
    sprd_gsp.sc8830 \
    libGLES_android \
    gralloc.sc8830 \
    libion \
    libmemoryheapion \
    libefuse \
    dhcpcd \
    libomxil-bellagio \
    libstagefright_sprd_h264dec \
    libstagefright_sprd_h264enc \
    libstagefright_sprd_mp3dec \
    libstagefright_sprd_mpeg4dec \
    libstagefright_sprd_mpeg4enc \
    libstagefright_sprd_soft_h264dec \
    libstagefright_sprd_soft_mpeg4dec \
    libstagefright_sprd_vpxdec \
    libstagefright_soft_imaadpcmdec \
    libstagefright_soft_mjpgdec \
    libdumpdata \
    libnvexchange \
    libvbpga \
    libvbeffect \
    audio.primary.sc8830 \
    libatchannel \
    audio_policy.sc8830 \
    libaudioresampler \
    libstagefrighthw_cm \
    libstagefrighthw \
    libomxvpu \
    batterysrv \
    iwnpi \
    libbt-vendor \
    liboemcrypto \
    modem_control \
    modemd \
    dhcp6s \
    dhcp6c \
    dhcp6ctl \
    dhcp6relay \
    cp_diskserver \
    phasecheckserver \
    radvd \
    refnotify \
    download \
    wcnd \
    wcnd_cli

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=SamsungSPRDRIL

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sdcardfs.enable=true

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Default props
ADDITIONAL_DEFAULT_PROPERTIES += \
    telephony.lteOnCdmaDevice=0 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.add_power_save=1 \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libpath2=/system/lib/libsec-ril-dsds.so \
    persist.security.ams.enforcing=1

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Prebuilt kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/j3xnlte/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

