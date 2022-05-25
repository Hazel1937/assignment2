spark-submit \
    --master yarn \
    --deploy-mode client \
    mycode.py \
    --output $1
