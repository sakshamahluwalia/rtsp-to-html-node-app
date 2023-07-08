#!/bin/bash
rm -rf ./output
mkdir ./output
cd output

for i in 1 2 3 4 5 6
do
   `mkdir channel$i`
done

cd ..

pwd
ls

ffmpeg -fflags nobuffer \
 -rtsp_transport tcp \
 -i "rtsp://admin:Godfatherr123.@192.168.68.132:554/cam/realmonitor?channel=1&subtype=0" \
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
 -segment_list output/channel1/playlist.m3u8 \
 -segment_list_type m3u8 \
 -segment_list_entry_prefix output/channel/1/ \
 output/channel1/%3d.ts &

ffmpeg -fflags nobuffer \
 -rtsp_transport tcp \
 -i "rtsp://admin:Godfatherr123.@192.168.68.132:554/cam/realmonitor?channel=2&subtype=0" \
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
 output/channel2/%3d.ts &

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
 -segment_list output/channel3/playlist.m3u8 \
 -segment_list_type m3u8 \
 -segment_list_entry_prefix output/channel/3/ \
 output/channel3/%3d.ts &

ffmpeg -fflags nobuffer \
 -rtsp_transport tcp \
 -i "rtsp://admin:Godfatherr123.@192.168.68.132:554/cam/realmonitor?channel=4&subtype=0" \
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
 -segment_list output/channel4/playlist.m3u8 \
 -segment_list_type m3u8 \
 -segment_list_entry_prefix output/channel/4/ \
 output/channel4/%3d.ts &

ffmpeg -fflags nobuffer \
 -rtsp_transport tcp \
 -i "rtsp://admin:Godfatherr123.@192.168.68.132:554/cam/realmonitor?channel=5&subtype=0" \
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
 -segment_list output/channel5/playlist.m3u8 \
 -segment_list_type m3u8 \
 -segment_list_entry_prefix output/channel/5/ \
 output/channel5/%3d.ts &

ffmpeg -fflags nobuffer \
 -rtsp_transport tcp \
 -i "rtsp://admin:Godfatherr123.@192.168.68.132:554/cam/realmonitor?channel=6&subtype=0" \
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
 -segment_list output/channel6/playlist.m3u8 \
 -segment_list_type m3u8 \
 -segment_list_entry_prefix output/channel/6/ \
 output/channel6/%3d.ts &
