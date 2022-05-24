#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Invalid number of parameters!"
    echo "Usage: ./tag_driver.sh [input_location] [output_location]"
    exit 1
fi

mapred streaming \
-D mapreduce.job.reduces=3 \
-D mapreduce.job.name='Tag owner inverted list' \
-input $1 \
-output $2 \
-mapper tag_mapper.py \
-reducer tag_reducer.py \
-file tag_mapper.py \
-file tag_reducer.py
