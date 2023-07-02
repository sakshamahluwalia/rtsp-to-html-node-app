#!/bin/bash
pwd
cd output

mkdir channel2

cd ..

pwd
ls

ffmpeg -fflags nobuffer \
 -rtsp_transport tcp \
 -i "rtsp://admin:Godfatherr123.@192.168.68.132:554/cam/realmonitor?channel=3&subtype=0" \
 -vsync 0 \
 -copyts \
 -vcodec copy \
 -movflags frag_keyframe+empty_moov \
 -an \
 -hls_flags delete_segments+append_list \
 -f segment \
 -segment_list_flags live \
 -segment_time 0.5 \
 -segment_list_size 1 \
 -segment_format mpegts \
 -segment_list output/channel2/playlist.m3u8 \
 -segment_list_type m3u8 \
 -segment_list_entry_prefix output/channel/2/ \
 output/channel2/%3d.ts
