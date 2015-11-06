#!/bin/bash


PREFIX=`pwd`
NGINX_PREFIX=$PREFIX/nginx
SRS_PREFIX=$PREFIX/srs

#start nginx for vod and live broadcast
$PREFIX/nginx/sbin/nginx
cd $SRS_PREFIX && sbin/srs -c conf/hls.conf
