#!/bin/bash

MODULESDIR=../modules

./configure  \
    --prefix=/nginx \
    --conf-path=/nginx/conf/nginx.conf \
    --http-log-path=/nginx/log/access.log \
    --error-log-path=/nginx/log/error.log \
    --lock-path=/nginx/nginx.lock \
    --pid-path=/nginx/nginx.pid \
    --http-client-body-temp-path=/nginx/body \
    --http-fastcgi-temp-path=/nginx/fastcgi \
    --http-proxy-temp-path=/nginx/proxy \
    --http-scgi-temp-path=/nginx/scgi \
    --http-uwsgi-temp-path=/nginx/uwsgi \
    --with-debug \
    --with-file-aio \
    --with-pcre-jit \
    --with-ipv6 \
    --with-http_ssl_module \
    --with-http_stub_status_module \
    --with-http_realip_module \
    --with-http_addition_module \
    --with-http_dav_module \
    --with-http_geoip_module \
    --with-http_gzip_static_module \
    --with-http_image_filter_module \
    --with-http_spdy_module \
    --with-http_sub_module \
    --with-http_xslt_module \
    --with-mail \
    --with-mail_ssl_module \
    --add-module=$MODULESDIR/nginx-auth-pam \
    --add-module=$MODULESDIR/nginx-dav-ext-module \
    --add-module=$MODULESDIR/nginx-echo \
    --add-module=$MODULESDIR/nginx-upstream-fair \
    --add-module=$MODULESDIR/ngx_http_substitutions_filter_module \
    --add-module=$MODULESDIR/nginx-vod-module
