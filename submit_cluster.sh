spark-submit \
    --master yarn \
    --deploy-mode cluster \
    mycode.py \
    --output $1
