#!/sbin/sh
#Enable Nexus 4 Camera Improve
#by rmkilc

case "$1" in
  backup)
    # Stub
  ;;
  restore)
	#Define the file
	file="/system/etc/media_profiles.xml"

	#Get line 2
	line2=$(sed -n "2{p;q;}" $file)

	#Verify file exists and file has not been modified by this script already
	if [[ -e $file && "$line2" != "<!-- Nexus 4 Camera Improve by rmkilc -->" ]]; then

		#Add text to line 2
		sed -i '2i<!-- Nexus 4 Camera Improve by rmkilc -->' $file

		#Image Encoding Quality
		sed -i 's/<!ATTLIST ImageEncoding quality (90|80|70|60|50|40) #REQUIRED>/<!ATTLIST ImageEncoding quality (100|100|100|100|100|100) #REQUIRED>/' $file

		#Set variables for Rear Camera lines
		camera_0_start=$(sed -n '{/<CamcorderProfiles cameraId="0">/=}' $file | head -1)
		camera_0_end=$(sed -n $camera_0_start',$ {/<\/CamcorderProfiles>/=}' $file | head -1)

		#Rear Camera 720p
		camera_0_720p_start=$(sed -n $camera_0_start','$camera_0_end' {/<EncoderProfile quality="720p" fileFormat="mp4" duration="30">/=}' $file | head -1)
		camera_0_720p_end=$(sed -n $camera_0_720p_start','$camera_0_end' {/<\/EncoderProfile>/=}' $file | head -1)
		#Rear Camera 720p Video bitrate
		camera_0_720p_video_start=$(sed -n $camera_0_720p_start','$camera_0_720p_end' {/<Video codec="h264"/=}' $file | head -1)
		camera_0_720p_video_end=$(sed -n $camera_0_720p_video_start','$camera_0_720p_end' {/\/>/=}' $file | head -1)
		sed -i $camera_0_720p_video_start','$camera_0_720p_video_end' s/bitRate="8000000"/bitRate="12000000"/' $file
		#Rear Camera 720p Audio bitrate and channels
		camera_0_720p_audio_start=$(sed -n $camera_0_720p_start','$camera_0_720p_end' {/<Audio codec="aac"/=}' $file | head -1)
		camera_0_720p_audio_end=$(sed -n $camera_0_720p_audio_start','$camera_0_720p_end' {/\/>/=}' $file | head -1)
		sed -i $camera_0_720p_audio_start','$camera_0_720p_audio_end' s/bitRate="96000"/bitRate="288000"/' $file
		sed -i $camera_0_720p_audio_start','$camera_0_720p_audio_end' s/channels="1" \/>/channels="2" \/>/' $file

		#Rear Camera 1080p
		camera_0_1080p_start=$(sed -n $camera_0_start','$camera_0_end' {/<EncoderProfile quality="1080p" fileFormat="mp4" duration="30">/=}' $file | head -1)
		camera_0_1080p_end=$(sed -n $camera_0_1080p_start','$camera_0_end' {/<\/EncoderProfile>/=}' $file | head -1)
		#Rear Camera 1080p Video bitrate
		camera_0_1080p_video_start=$(sed -n $camera_0_1080p_start','$camera_0_1080p_end' {/<Video codec="h264"/=}' $file | head -1)
		camera_0_1080p_video_end=$(sed -n $camera_0_1080p_video_start','$camera_0_1080p_end' {/\/>/=}' $file | head -1)
		sed -i $camera_0_1080p_video_start','$camera_0_1080p_video_end' s/bitRate="12000000"/bitRate="20000000"/' $file
		#Rear Camera 1080p Audio bitrate and channels
		camera_0_1080p_audio_start=$(sed -n $camera_0_1080p_start','$camera_0_1080p_end' {/<Audio codec="aac"/=}' $file | head -1)
		camera_0_1080p_audio_end=$(sed -n $camera_0_1080p_audio_start','$camera_0_1080p_end' {/\/>/=}' $file | head -1)
		sed -i $camera_0_1080p_audio_start','$camera_0_1080p_audio_end' s/bitRate="96000"/bitRate="288000"/' $file
		sed -i $camera_0_1080p_audio_start','$camera_0_1080p_audio_end' s/channels="1" \/>/channels="2" \/>/' $file

		#Rear Camera Timelapse 720p
		camera_0_timelapse720p_start=$(sed -n $camera_0_start','$camera_0_end' {/<EncoderProfile quality="timelapse720p" fileFormat="mp4" duration="30">/=}' $file | head -1)
		camera_0_timelapse720p_end=$(sed -n $camera_0_timelapse720p_start','$camera_0_end' {/<\/EncoderProfile>/=}' $file | head -1)
		#Rear Camera Timelapse 720p Video bitrate
		camera_0_timelapse720p_video_start=$(sed -n $camera_0_timelapse720p_start','$camera_0_timelapse720p_end' {/<Video codec="h264"/=}' $file | head -1)
		camera_0_timelapse720p_video_end=$(sed -n $camera_0_timelapse720p_video_start','$camera_0_timelapse720p_end' {/\/>/=}' $file | head -1)
		sed -i $camera_0_timelapse720p_video_start','$camera_0_timelapse720p_video_end' s/bitRate="8000000"/bitRate="12000000"/' $file
		#Rear Camera Timelapse 720p Audio bitrate and channels
		camera_0_timelapse720p_audio_start=$(sed -n $camera_0_timelapse720p_start','$camera_0_timelapse720p_end' {/<Audio codec="aac"/=}' $file | head -1)
		camera_0_timelapse720p_audio_end=$(sed -n $camera_0_timelapse720p_audio_start','$camera_0_timelapse720p_end' {/\/>/=}' $file | head -1)
		sed -i $camera_0_timelapse720p_audio_start','$camera_0_timelapse720p_audio_end' s/bitRate="96000"/bitRate="288000"/' $file
		sed -i $camera_0_timelapse720p_audio_start','$camera_0_timelapse720p_audio_end' s/channels="1" \/>/channels="2" \/>/' $file

		#Rear Camera Timelapse 1080p
		camera_0_timelapse1080p_start=$(sed -n $camera_0_start','$camera_0_end' {/<EncoderProfile quality="timelapse1080p" fileFormat="mp4" duration="30">/=}' $file | head -1)
		camera_0_timelapse1080p_end=$(sed -n $camera_0_timelapse1080p_start','$camera_0_end' {/<\/EncoderProfile>/=}' $file | head -1)
		#Rear Camera Timelapse 1080p Video bitrate
		camera_0_timelapse1080p_video_start=$(sed -n $camera_0_timelapse1080p_start','$camera_0_timelapse1080p_end' {/<Video codec="h264"/=}' $file | head -1)
		camera_0_timelapse1080p_video_end=$(sed -n $camera_0_timelapse1080p_video_start','$camera_0_timelapse1080p_end' {/\/>/=}' $file | head -1)
		sed -i $camera_0_timelapse1080p_video_start','$camera_0_timelapse1080p_video_end' s/bitRate="12000000"/bitRate="20000000"/' $file
		#Rear Camera Timelapse 1080p Audio bitrate and channels
		camera_0_timelapse1080p_audio_start=$(sed -n $camera_0_timelapse1080p_start','$camera_0_timelapse1080p_end' {/<Audio codec="aac"/=}' $file | head -1)
		camera_0_timelapse1080p_audio_end=$(sed -n $camera_0_timelapse1080p_audio_start','$camera_0_timelapse1080p_end' {/\/>/=}' $file | head -1)
		sed -i $camera_0_timelapse1080p_audio_start','$camera_0_timelapse1080p_audio_end' s/bitRate="96000"/bitRate="288000"/' $file
		sed -i $camera_0_timelapse1080p_audio_start','$camera_0_timelapse1080p_audio_end' s/channels="1" \/>/channels="2" \/>/' $file

		#Rear Camera Image Encoding Quality
		sed -i $camera_0_start','$camera_0_end' s/<ImageEncoding quality="95" \/>/<ImageEncoding quality="100" \/>/' $file
		sed -i $camera_0_start','$camera_0_end' s/<ImageEncoding quality="80" \/>/<ImageEncoding quality="100" \/>/' $file
		sed -i $camera_0_start','$camera_0_end' s/<ImageEncoding quality="70" \/>/<ImageEncoding quality="100" \/>/' $file

		#Rear Camera Memory Cap
		sed -i $camera_0_start','$camera_0_end' s/<ImageDecoding memCap="20000000" \/>/<ImageDecoding memCap="40000000" \/>/' $file

		#Video Encoder Cap h264
		videoencodercap_h264_start=$(sed -n '{/<VideoEncoderCap name="h264" enabled="true"/=}' $file | head -1)
		videoencodercap_h264_end=$(sed -n $videoencodercap_h264_start',$ {/\/>/=}' $file | head -1)
		sed -i $videoencodercap_h264_start','$videoencodercap_h264_end' s/maxBitRate="12000000"/maxBitRate="20000000"/' $file

		#Audio Encoder Cap aac
		audioencodercap_aac_start=$(sed -n '{/<AudioEncoderCap name="aac" enabled="true"/=}' $file | head -1)
		audioencodercap_aac_end=$(sed -n $audioencodercap_aac_start',$ {/\/>/=}' $file | head -1)
		sed -i $audioencodercap_aac_start','$audioencodercap_aac_end' s/maxChannels="1"/maxChannels="2"/' $file

	fi
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
