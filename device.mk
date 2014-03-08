#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL geeb devices, and
# are also specific to geeb devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/lge/geeb/overlay

PRODUCT_COPY_FILES += \
    device/lge/geeb/prebuilt/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    device/lge/geeb/prebuilt/ROMControl.apk:system/app/ROMControl.apk

PRODUCT_COPY_FILES += \
    device/lge/geeb/prebuilt/tweaks/kerneltweaks:system/etc/init.d/kerneltweaks

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PACKAGES := \
	lights.geeb

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

#Prebuilt tweaks
PRODUCT_COPY_FILES += \
    device/lge/geeb/prebuilt/tweaks/fstweaks:system/etc/init.d/fstweaks \
    device/lge/geeb/prebuilt/tweaks/95-cameraimprove.sh:system/addon.d/95-cameraimprove.sh \

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

PRODUCT_COPY_FILES += \
	device/lge/geeb/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
	device/lge/geeb/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
	device/lge/geeb/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin

PRODUCT_COPY_FILES += \
	device/lge/geeb/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
	device/lge/geeb/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
	device/lge/geeb/thermald-geeb.conf:system/etc/thermald.conf

PRODUCT_COPY_FILES += \
	device/lge/geeb/init.geeb.rc:root/init.geeb.rc \
	device/lge/geeb/init.geeb.usb.rc:root/init.geeb.usb.rc \
	device/lge/geeb/fstab.geeb:root/fstab.geeb \
	device/lge/geeb/ueventd.geeb.rc:root/ueventd.geeb.rc \
	device/lge/geeb/media_profiles.xml:system/etc/media_profiles.xml \
	device/lge/geeb/media_codecs.xml:system/etc/media_codecs.xml

PRODUCT_COPY_FILES += \
	device/lge/geeb/kickstart_checker.sh:system/etc/kickstart_checker.sh \
	device/lge/geeb/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	device/lge/geeb/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh

# Prebuilt kl and kcm keymaps
PRODUCT_COPY_FILES += \
	device/lge/geeb/apq8064-tabla-snd-card_Button_Jack.kl:system/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl \
	device/lge/geeb/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
	device/lge/geeb/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	device/lge/geeb/keypad_8064.kl:system/usr/keylayout/keypad_8064.kl \
	device/lge/geeb/apq8064-tabla-snd-card_Button_Jack.kcm:system/usr/keychars/apq8064-tabla-snd-card_Button_Jack.kcm \
	device/lge/geeb/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
	device/lge/geeb/keypad_8064.kcm:system/usr/keychars/keypad_8064.kcm \
	device/lge/geeb/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
	device/lge/geeb/touch_dev.idc:system/usr/idc/touch_dev.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# GPS configuration
PRODUCT_COPY_FILES += \
	device/lge/geeb/gps.conf:system/etc/gps.conf

# vold configuration
PRODUCT_COPY_FILES += \
	device/lge/geeb/vold.fstab:system/etc/vold.fstab

# NFC packages geeb for geeb
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    nfc.geeb \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/lge/geeb/nfc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/lge/geeb/nfc/nfcee_access_debug.xml
endif

# Commands to migrate prefs from com.android.nfc3 to com.android.nfc
PRODUCT_COPY_FILES += \
        packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

PRODUCT_COPY_FILES += \
	device/lge/geeb/prebuilt/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	device/lge/geeb/prebuilt/audio_effects.conf:system/etc/audio_effects.conf \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320 

#Pimp My Rom build.prop tweaks
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.supplicant_scan_interval=180 \
	pm.sleep_mode=1 \
	ro.ril.disable.power.collapse=0 \
	dalvik.vm.dexopt-flags=m=y \
	ro.telephony.call_ring.delay=0 \
	video.accelerate.hw=1 \
	ro.media.enc.jpeg.quality=100 \
	ro.kernel.android.checkjni=0 \
	ro.kernel.checkjni=0 \
	ro.HOME_APP_ADJ=1 \
	net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960 \
	net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
	net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960 \
	net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960 \
	net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960 \
	debug.performance.tuning=1 \
	ro.lge.proximity.delay=25 \
	mot.proximity.delay=25 \
	persist.sys.purgeable_assets=1 \
	windowsmgr.max_events_per_sec=150 \
	ro.max.fling_velocity=12000 \
	ro.min.fling_velocity=8000 \
	media.stagefright.enable-player=true \
	media.stagefright.enable-meta=true \
	media.stagefright.enable-scan=false \
	media.stagefright.enable-http=true

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
	persist.audio.handset.mic=dmic \
	persist.audio.fluence.mode=endfire \
	persist.audio.lowlatency.rec=false \
	af.resampler.quality=4


# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.call_ring.multiple=0

# Our Modem responds slowly
PRODUCT_PROPERTY_OVERRIDES += \
        ro.telephony.slowModem=1

#Upto 3 layers can go through overlays
PRODUCT_PROPERTY_OVERRIDES += debug.mdpcomp.maxlayer=3

#E970 has sdcard
PRODUCT_CHARACTERISTICS := default

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck

PRODUCT_PACKAGES += \
	libgenlock \
	liboverlay \
	hwcomposer.msm8960 \
	gralloc.msm8960 \
	copybit.msm8960

PRODUCT_PACKAGES += \
	alsa.msm8960 \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler

PRODUCT_PACKAGES += \
	hci_qcomm_init

PRODUCT_PACKAGES += \
	power.msm8960

PRODUCT_COPY_FILES += \
	device/lge/geeb/init.geeb.bt.sh:system/etc/init.geeb.bt.sh \
	device/lge/geeb/init.bdaddr.sh:system/etc/init.bdaddr.sh

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.bt.hci_transport=smd

PRODUCT_PACKAGES += \
	camera.geeb \
	camera.msm8960 \
	libmmcamera_interface2 \
	libmmcamera_interface

PRODUCT_PACKAGES += \
	mm-vdec-omx-test \
	mm-venc-omx-test720p \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert

PRODUCT_PACKAGES += \
	libloc_adapter \
	libloc_eng \
	libloc_api_v02 \
	libgps.utils \
	gps.msm8960

PRODUCT_PACKAGES += \
	bdAddrLoader \
	libwfcu \
	conn_init \
	charger_touch

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so

# Enable LTE on geeb
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=0 \
	telephony.lteOnGsmDevice=1 \
	ro.telephony.default_network=9 \
	ro.ril.def.preferred.network=9

PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=60

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
	media.aac_51_output_enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	debug.prerotation.disable=1

PRODUCT_PROPERTY_OVERRIDES += \
        debug.egl.recordable.rgba8888=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
	system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
	system/extras/bugmailer/send_bug:system/bin/send_bug

# This is the mako-specific audio package
$(call inherit-product, frameworks/base/data/sounds/AudioPackage10.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
