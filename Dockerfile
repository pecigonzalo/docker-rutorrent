FROM linuxserver/baseimage.nginx
MAINTAINER sparklyballs <sparklyballs@linuxserver.io> Gonzalo Peci <davyjones@linuxserver.io>

ENV APTLIST="rtorrent git-core unrar unzip"

# repositories
RUN add-apt-repository ppa:kirillshkrogalev/ffmpeg-next && \
add-apt-repository -y ppa:jalaziz/rtorrent && \
add-apt-repository ppa:deluge-team/ppa > /dev/null && \
    apt-get update -q && \
    apt-get install $APTLIST -qy && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Adding Custom files
ADD defaults/ /defaults/
ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/service/*/run /etc/my_init.d/*.sh

#Ports and Volumes
VOLUME /config /downloads
EXPOSE 9527 45566-45576
