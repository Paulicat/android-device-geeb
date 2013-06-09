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

PRODUCT_PACKAGES += \
    HoloLauncher \
    Term \
    FileManager \
    com.noozxoidelabs.eizo.rewirepro.2.0.1.13 \
    app.dogsbark.noozxoidelabs.noozy.3.0.2.3 \
    AudioEffectService \
    DolbyMobile \
    SwiqiSettingsService \
    Trickster

#Prebuilt Apps Libs
PRODUCT_COPY_FILES += \
    device/lge/geeb/prebuilt/apps/Term/libjackpal-androidterm3.so:system/lib/libjackpal-androidterm3.so \
    device/lge/geeb/prebuilt/apps/Term/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so \
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
# \
#    device/lge/geeb/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf

#NexusLouder
PRODUCT_COPY_FILES += \
    device/lge/geeb/prebuilt/louder/system/bin/alsa_amixer:system/bin/alsa_amixer \
    device/lge/geeb/prebuilt/louder/system/bin/sound8x60:system/bin/sound8x60 \
    device/lge/geeb/prebuilt/louder/system/bin/alsa_aplay:system/bin/alsa_aplay \
    device/lge/geeb/prebuilt/louder/system/bin/alsa_ctl:system/bin/alsa_ctl \
    device/lge/geeb/prebuilt/louder/system/bin/awesome:system/bin/awesome \
    device/lge/geeb/prebuilt/louder/system/bin/basimage_ibeats_solo.bin:system/bin/basimage_ibeats_solo.bin \
    device/lge/geeb/prebuilt/louder/system/bin/basimage_ibeats.bin:system/bin/basimage_ibeats.bin \
    device/lge/geeb/prebuilt/louder/system/bin/basimage_ibeats_solo_x.bin:system/bin/basimage_ibeats_solo_x.bin \
    device/lge/geeb/prebuilt/louder/system/bin/basimage_ibeats_x.bin:system/bin/basimage_ibeats_x.bin \
    device/lge/geeb/prebuilt/louder/system/bin/beatsbass:system/bin/beatsbass \
    device/lge/geeb/prebuilt/louder/system/bin/beatsnormal:system/bin/beatsnormal \
    device/lge/geeb/prebuilt/louder/system/bin/dynimage_ibeats_solo.bin:system/bin/dynimage_ibeats_solo.bin \
    device/lge/geeb/prebuilt/louder/system/bin/dynimage_ibeats_solo_x.bin:system/bin/dynimage_ibeats_solo_x.bin \
    device/lge/geeb/prebuilt/louder/system/bin/dynimage_ibeats_x.bin:system/bin/dynimage_ibeats_x.bin \
    device/lge/geeb/prebuilt/louder/system/bin/mm-audio-acdb-test:system/bin/mm-audio-acdb-test \
    device/lge/geeb/prebuilt/louder/system/bin/mm-jpeg-dec-test-client:system/bin/mm-jpeg-dec-test-client \
    device/lge/geeb/prebuilt/louder/system/bin/mm-jpeg-enc-test-client:system/bin/mm-jpeg-enc-test-client \
    device/lge/geeb/prebuilt/louder/system/bin/mm-venc-omx-test720p:system/bin/mm-venc-omx-test720p \
    device/lge/geeb/prebuilt/louder/system/bin/mm-video-encdrv-test:system/bin/mm-video-encdrv-test \
    device/lge/geeb/prebuilt/louder/system/bin/mm-audio-alsa-test:system/bin/mm-audio-alsa-test \
    device/lge/geeb/prebuilt/louder/system/bin/peqimage_ibeats.bin:system/bin/peqimage_ibeats.bin \
    device/lge/geeb/prebuilt/louder/system/bin/peqimage_ibeats_solo.bin:system/bin/peqimage_ibeats_solo.bin \
    device/lge/geeb/prebuilt/louder/system/bin/peqimage_ibeats_solo_x.bin:system/bin/peqimage_ibeats_solo_x.bin \
    device/lge/geeb/prebuilt/louder/system/bin/peqimage_ibeats_x.bin:system/bin/peqimage_ibeats_x.bin \
    device/lge/geeb/prebuilt/louder/system/bin/snd:system/bin/snd \
    device/lge/geeb/prebuilt/louder/system/bin/snd3254:system/bin/snd3254 \
    device/lge/geeb/prebuilt/louder/system/bin/snd8k:system/bin/snd8k \
    device/lge/geeb/prebuilt/louder/system/bin/sony_sysd:system/bin/sony_sysd \
    device/lge/geeb/prebuilt/louder/system/bin/sound:system/bin/sound \
    device/lge/geeb/prebuilt/louder/system/bin/sound8960:system/bin/sound8960 \
    device/lge/geeb/prebuilt/louder/system/bin/spkamp:system/bin/spkamp \
    device/lge/geeb/prebuilt/louder/system/etc/AudioFilterProduct.csv:system/etc/AudioFilterProduct.csv \
    device/lge/geeb/prebuilt/louder/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/geeb/prebuilt/louder/system/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/lge/geeb/prebuilt/louder/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/lge/geeb/prebuilt/louder/system/etc/dynimage_gec_x.bin:system/etc/dynimage_gec_x.bin \
    device/lge/geeb/prebuilt/louder/system/etc/dynimage_gec_bt.bin:system/etc/dynimage_gec_bt.bin \
    device/lge/geeb/prebuilt/louder/system/etc/peqimage_ibeats_solo_x.bin:system/etc/peqimage_ibeats_solo_x.bin \
    device/lge/geeb/prebuilt/louder/system/etc/peqimage_ibeats_solo.bin:system/etc/peqimage_ibeats_solo.bin \
    device/lge/geeb/prebuilt/louder/system/etc/peqimage_ibeats_pro.bin:system/etc/peqimage_ibeats_pro.bin \
    device/lge/geeb/prebuilt/louder/system/etc/peqimage_ibeats.bin:system/etc/peqimage_ibeats.bin \
    device/lge/geeb/prebuilt/louder/system/etc/Volume.db:system/etc/Volume.db \
    device/lge/geeb/prebuilt/louder/system/etc/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    device/lge/geeb/prebuilt/louder/system/etc/peqimage_gec_x.bin:system/etc/peqimage_gec_x.bin \
    device/lge/geeb/prebuilt/louder/system/etc/dynimage_gec.bin:system/etc/dynimage_gec.bin \
    device/lge/geeb/prebuilt/louder/system/etc/AudioFilterPlatform.csv:system/etc/AudioFilterPlatform.csv \
    device/lge/geeb/prebuilt/louder/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/lge/geeb/prebuilt/louder/system/etc/peqimage_gec_bt.bin:system/etc/peqimage_gec_bt.bin \
    device/lge/geeb/prebuilt/louder/system/etc/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/lge/geeb/prebuilt/louder/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/geeb/prebuilt/louder/system/etc/TPA2051_CFG_BEATS_HW.csv:system/etc/TPA2051_CFG_BEATS_HW.csv \
    device/lge/geeb/prebuilt/louder/system/etc/peqimage_gec.bin:system/etc/peqimage_gec.bin \
    device/lge/geeb/prebuilt/louder/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/lge/geeb/prebuilt/louder/system/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/lge/geeb/prebuilt/louder/system/etc/stream_speaker.txt:system/etc/stream_speaker.txt \
    device/lge/geeb/prebuilt/louder/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/geeb/prebuilt/louder/system/etc/be_photo:system/etc/be_photo \
    device/lge/geeb/prebuilt/louder/system/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/lge/geeb/prebuilt/louder/system/etc/stream_headset.txt:system/etc/stream_headset.txt \
    device/lge/geeb/prebuilt/louder/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/geeb/prebuilt/louder/system/etc/be_movie:system/etc/be_movie \
    device/lge/geeb/prebuilt/louder/system/etc/stream_earpiece.txt:system/etc/stream_earpiece.txt \
    device/lge/geeb/prebuilt/louder/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/geeb/prebuilt/louder/system/etc/basimage_ibeats_x.bin:system/etc/basimage_ibeats_x.bin \
    device/lge/geeb/prebuilt/louder/system/etc/asound.conf:system/etc/asound.conf \
    device/lge/geeb/prebuilt/louder/system/etc/SRSAudioFilter.csv:system/etc/SRSAudioFilter.csv \
    device/lge/geeb/prebuilt/louder/system/etc/lmfilter.txt:system/etc/lmfilter.txt \
    device/lge/geeb/prebuilt/louder/system/etc/basimage_ibeats_studio.bin:system/etc/basimage_ibeats_studio.bin \
    device/lge/geeb/prebuilt/louder/system/etc/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
    device/lge/geeb/prebuilt/louder/system/etc/Sound_Original.txt:system/etc/Sound_Original.txt \
    device/lge/geeb/prebuilt/louder/system/etc/HP_Video.csv:system/etc/HP_Video.csv \
    device/lge/geeb/prebuilt/louder/system/etc/basimage_ibeats_solo_x.bin:system/etc/basimage_ibeats_solo_x.bin \
    device/lge/geeb/prebuilt/louder/system/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/lge/geeb/prebuilt/louder/system/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    device/lge/geeb/prebuilt/louder/system/etc/basimage_ibeats_solo.bin:system/etc/basimage_ibeats_solo.bin \
    device/lge/geeb/prebuilt/louder/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/lge/geeb/prebuilt/louder/system/etc/soundbooster.txt:system/etc/soundbooster.txt \
    device/lge/geeb/prebuilt/louder/system/etc/eqfilter.txt:system/etc/eqfilter.txt \
    device/lge/geeb/prebuilt/louder/system/etc/basimage_ibeats_pro.bin:system/etc/basimage_ibeats_pro.bin \
    device/lge/geeb/prebuilt/louder/system/etc/AIC3008_REG_DualMic_XC.csv:system/etc/AIC3008_REG_DualMic_XC.csv \
    device/lge/geeb/prebuilt/louder/system/etc/situation.txt:system/etc/situation.txt \
    device/lge/geeb/prebuilt/louder/system/etc/dynimage_ibeats_x.bin:system/etc/dynimage_ibeats_x.bin \
    device/lge/geeb/prebuilt/louder/system/etc/basimage_ibeats.bin:system/etc/basimage_ibeats.bin \
    device/lge/geeb/prebuilt/louder/system/etc/AIC3008_REG_DualMic.csv:system/etc/AIC3008_REG_DualMic.csv \
    device/lge/geeb/prebuilt/louder/system/etc/dynimage_ibeats_studio.bin:system/etc/dynimage_ibeats_studio.bin \
    device/lge/geeb/prebuilt/louder/system/etc/basimage_gec_x.bin:system/etc/basimage_gec_x.bin \
    device/lge/geeb/prebuilt/louder/system/etc/aeqcoe.txt:system/etc/aeqcoe.txt \
    device/lge/geeb/prebuilt/louder/system/etc/peqimage_ibeats_x.bin:system/etc/peqimage_ibeats_x.bin \
    device/lge/geeb/prebuilt/louder/system/etc/dynimage_ibeats_solo_x.bin:system/etc/dynimage_ibeats_solo_x.bin \
    device/lge/geeb/prebuilt/louder/system/etc/basimage_gec_bt.bin:system/etc/basimage_gec_bt.bin \
    device/lge/geeb/prebuilt/louder/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/lge/geeb/prebuilt/louder/system/etc/peqimage_ibeats_studio.bin:system/etc/peqimage_ibeats_studio.bin \
    device/lge/geeb/prebuilt/louder/system/etc/dynimage_ibeats_solo.bin:system/etc/dynimage_ibeats_solo.bin \
    device/lge/geeb/prebuilt/louder/system/etc/basimage_gec.bin:system/etc/basimage_gec.bin \
    device/lge/geeb/prebuilt/louder/system/etc/AdieHWCodec_BEATS_HW.csv:system/etc/AdieHWCodec_BEATS_HW.csv \
    device/lge/geeb/prebuilt/louder/system/etc/audio/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
    device/lge/geeb/prebuilt/louder/system/etc/audio/lmfilter.txt:system/etc/audio/lmfilter.txt \
    device/lge/geeb/prebuilt/louder/system/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
    device/lge/geeb/prebuilt/louder/system/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
    device/lge/geeb/prebuilt/louder/system/etc/audio/eqfilter.txt:system/etc/audio/eqfilter.txt \
    device/lge/geeb/prebuilt/louder/system/etc/audio/situation.txt:system/etc/audio/situation.txt \
    device/lge/geeb/prebuilt/louder/system/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
    device/lge/geeb/prebuilt/louder/system/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
    device/lge/geeb/prebuilt/louder/system/etc/permissions/com.sonyericsson.audioeffectif.xml:system/etc/permissinos/com.sonyericsson.audioeffectif.xml \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Recording_Mono.txt:system/etc/soundimage/Sound_Recording_Mono.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Original_SPK_MFG.txt:system/etc/soundimage/Sound_Original_SPK_MFG.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Original_SPK_BCLK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Original_Rec_MFG.txt:system/etc/soundimage/Sound_Original_Rec_MFG.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Beats.txt:system/etc/soundimage/Sound_Beats.txt \
    device/lge/geeb/prebuilt/louder/system/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    device/lge/geeb/prebuilt/louder/system/framework/semc_audioeffectif.jar:system/framework/semc_audioeffectif.jar \
    device/lge/geeb/prebuilt/louder/system/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    device/lge/geeb/prebuilt/louder/system/lib/libaudioeffect_jni.so:system/lib/libaudioeffect_jni.so \
    device/lge/geeb/prebuilt/louder/system/lib/libaudioflinger.so:system/lib/libaudioflinger.so \
    device/lge/geeb/prebuilt/louder/system/lib/libbeatscorehtc.so:system/lib/libbeatscorehtc.so \
    device/lge/geeb/prebuilt/louder/system/lib/libsrscorehtc.so:system/lib/libsrscorehtc.so \
    device/lge/geeb/prebuilt/louder/system/lib/libsrsprocessing.so:system/lib/libsrsprocessing.so \
    device/lge/geeb/prebuilt/louder/system/lib/libswiqisettinghelper.so:system/lib/libswiqisettinghelper.so \
    device/lge/geeb/prebuilt/louder/system/lib/libtinyalsa.so:system/lib/libtinyalsa.so \
    device/lge/geeb/prebuilt/louder/system/lib/hw/alsa.msm8960.so:system/lib/hw/alsa.msm8960.so \
    device/lge/geeb/prebuilt/louder/system/lib/hw/audio_policy.default.so:system/lib/hw/audio_policy.default.so \
    device/lge/geeb/prebuilt/louder/system/lib/hw/audio.primary.default.so:system/lib/hw/audio.primary.default.so \
    device/lge/geeb/prebuilt/louder/system/lib/hw/audio.r_submix.default.so:system/lib/hw/audio.r_submix.default.so \
    device/lge/geeb/prebuilt/louder/system/lib/hw/audio.usb.default.so:system/lib/hw/audio.usb.default.so \
    device/lge/geeb/prebuilt/louder/system/lib/hw/audio.primary.msm8960.so:system/lib/hw/audio.primary.msm8960.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libaudiopreprocessing.so:system/lib/soundfx/libaudiopreprocessing.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libbeatsbass.so:system/lib/soundfx/libbeatsbass.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libbundlewrapper.so:system/lib/soundfx/libbundlewrapper.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libclearaudiowrapper.so:system/lib/soundfx/libclearaudiowrapper.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libdownmix.so:system/lib/soundfx/libdownmix.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libfnrwrapper.so:system/lib/soundfx/libfnrwrapper.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libhearingprotection.so:system/lib/soundfx/libhearingprotection.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libposteffectwrapper.so:system/lib/soundfx/libposteffectwrapper.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libpreeffectwrapper.so:system/lib/soundfx/libpreeffectwrapper.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libreverbwrapper.so:system/lib/soundfx/libreverbwrapper.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libsoundaurawrapper.so:system/lib/soundfx/libsoundaurawrapper.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libsrscore.so:system/lib/soundfx/libsrscore.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libsrsfx.so:system/lib/soundfx/libsrsfx.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libsrstb.so:system/lib/soundfx/libsrstb.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libvisualizer.so:system/lib/soundfx/libvisualizer.so \
    device/lge/geeb/prebuilt/louder/system/lib/soundfx/libvptwrapper.so:system/lib/soundfx/libvptwrapper.so \
    device/lge/geeb/prebuilt/louder/system/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \





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
