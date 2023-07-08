cd output
for i in 1 2 3 4 5 6
do
    cd channel$i
    file_count=$(ls -1 | wc -l)
    ls -1t | tail -n 2 | xargs rm
    cd ..
done
