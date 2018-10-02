FROM node:10-stretch
RUN dpkg --add-architecture i386
RUN apt-get update
#RUN apt-get install software-properties-common -y
#RUN add-apt-repository ppa:ubuntu-wine/ppa -y
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install wine wine32 wine64 libwine libwine:i386 fonts-wine nsis -y
RUN npm install -g bower gulp grunt-cli
