#!/usr/bin/env bash


Nurl=`wc -l urls.txt | awk '{print $1}'`
Date=`date`

echo
echo
echo ====== Submit "$Nurl" urls === "$Date" ======

curl -H 'Content-Type:text/plain' --data-binary @urls.txt "http://data.zz.baidu.com/urls?site=h2g2.club&token=8384ZYxY1PNc8NyE"

echo
echo ====== Done ======
echo
