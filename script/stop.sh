#!/bin/bash


PREFIX=`pwd`
NGINX_PREFIX=$PREFIX/nginx
SRS_PREFIX=$PREFIX/srs

#start nginx for vod and live broadcast
$PREFIX/nginx/sbin/nginx -s quit
kill -9 `cat srs/srs.pid`
