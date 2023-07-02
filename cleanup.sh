cd output

cd ./channel1
file_count=$(ls -1 | wc -l)
keep_count=$((file_count - 2))
ls -1t | tail -n "$keep_count" | xargs rm


cd ../channel2
file_count=$(ls -1 | wc -l)
keep_count=$((file_count - 2))
ls -1t | tail -n "$keep_count" | xargs rm

cd ../channel3
file_count=$(ls -1 | wc -l)
keep_count=$((file_count - 2))
ls -1t | tail -n "$keep_count" | xargs rm


# cd ../
# cd channel4
# file_count=$(ls -1 | wc -l)
# keep_count=$((file_count - 2))
# ls -1t | tail -n "$keep_count" | xargs rm
# echo $file_count
