#!/bin/bash
kill -s QUIT `cat nginx/nginx.pid`
kill -9 `cat srs/srs.pid`
