FROM ubuntu:bionic

# Volumes
# Src Code volume
VOLUME [ "/src" ]

RUN apt-get update
RUN apt-get -y upgrade
RUN apt -y install net-tools
RUN apt -y install vim
RUN apt -y install wget


RUN apt -y install lua5.3
RUN ln -s /usr/bin/lua5.3 /usr/bin/lua
RUN ln -s /usr/bin/luac5.3 /usr/bin/luac



