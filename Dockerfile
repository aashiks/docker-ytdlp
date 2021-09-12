FROM debian:buster-slim
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y ffmpeg ffmpegthumbnailer python3-mutagen \
    python3-pycryptodome python3-websockets python3-keyring aria2 phantomjs
RUN aria2c https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp
RUN mkdir -p /config
COPY init /init
RUN chmod +x /init
WORKDIR /workdir
ENTRYPOINT ["/init"]
