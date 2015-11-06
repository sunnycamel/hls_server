This project of combination of nginx nginx-vod-module and srs(simple rtmp server)

Build everything by run command:
      make.sh path_to_install_everything

Run the sample server by run command:
    start.sh
in the path where you specified in the build step

In the path where you installed everything, you will find a dir named "html"
the movie dir is the place to hold the video for vod

To play the vod use the url:
   http://domain/movie/video_filename/index.m3u8

To play the live broadcast:
   1. you need feed rtmp stream to port 1935
   2. play it at:
      http://domain/[app]/[stream].m3u8
      replace app and stream with you own
