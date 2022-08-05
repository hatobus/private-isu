#!/bin/bash

DATE_STRING=`date +%Y%m%d-%H%M%S`

# ログファイルを実行時間でrotateする
mv /var/log/nginx/access.log /var/log/nginx/acces${DATE_STRING}.log

# ログファイルを開き直す
nginx -s reopen
