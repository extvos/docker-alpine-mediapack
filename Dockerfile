FROM extvos/alpine
MAINTAINER  "Mingcai SHEN <archsh@gmail.com>"
RUN apk add mediainfo wget
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -O /tmp/ffmpeg.tar.xz \
    && tar Jxf /tmp/ffmpeg.tar.xz -C /tmp \
    && mv /tmp/ffmpeg-4.*-amd64-static/* /usr/local/bin/ \
    && rm -rf /tmp/*