FROM linuxserver/baseimage.nginx

MAINTAINER Mark Burford <sparklyballs@gmail.com>

ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

# Set the locale
RUN locale-gen en_US.UTF-8

# repositories
RUN add-apt-repository ppa:kirillshkrogalev/ffmpeg-next && \
add-apt-repository -y ppa:jalaziz/rtorrent
# install packages
RUN  apt-get update &&\
apt-get -y install \ 
ffmpeg \
git-core \
mediainfo \
php5-geoip \
rtorrent \
tmux \
unrar \
unzip \
wget -qy && \
apt-get clean -y && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set the volumes
VOLUME /config /downloads

# create a home folder for abc user and rtorrent session folder
RUN mkdir -p /abc_home/.rtorrentsession && \
usermod -d /abc_home abc

#Adding Custom files
RUN mkdir -p /defaults 
ADD defaults/ /defaults/
ADD init/ /etc/my_init.d/
ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run
RUN chmod -v +x /etc/my_init.d/*.sh







