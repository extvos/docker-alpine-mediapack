FROM extvos/alpine:latest
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"

RUN apk add mediainfo wget
RUN wget https://www.johnvansickle.com/ffmpeg/old-releases/ffmpeg-4.4-amd64-static.tar.xz -O /tmp/ffmpeg.tar.xz \
    && tar Jxf /tmp/ffmpeg.tar.xz -C /tmp \
    && mv /tmp/ffmpeg-4.4-amd64-static/* /usr/local/bin/ \
    && rm -rf /tmp/*
