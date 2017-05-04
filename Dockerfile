FROM phusion/baseimage

MAINTAINER Nay San <nay.san@anu.edu.au>

RUN apt-get update

RUN apt-get install -y \
        python3-pip \
        libfftw3-dev \
        ffmpeg \
        libavcodec-dev

RUN cd /usr/bin \
	&& ln -s pip3 pip \
	&& ln -s python3 python

RUN pip install --upgrade pip \
    && pip install numpy \
    && pip install pyfftw
