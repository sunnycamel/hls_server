This project combine the nginx nginx-vod-module and srs(simple rtmp server) together, to provide abiltiy of vod and live broadcast

Build and install everything by run command:
      make.sh path_to_install_everything

Run the sample server by run command:
    start.sh
in the path where you specified in the build step

In the path where you installed everything, you will find a dir named "html/movie"
the movie dir is the place to hold the video for vod

To play the vod use the url:
   http://domain/movie/video_filename/index.m3u8

To play the live broadcast:
   1. you need feed rtmp stream to port 1935
   2. play it at:
      http://domain/[app]/[stream].m3u8
      replace app and stream with your own

A sample site is also deployed, you can try it at http://domian:8080

BTW:
if you find some dependency issue on build nginx and you are on Ubuntu try this trick:
sudo apt-get build-dep nginx
