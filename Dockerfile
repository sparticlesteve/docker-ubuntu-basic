FROM ubuntu:14.04
MAINTAINER Steve Farrell <Steven.Farrell@cern.ch>

# Basic update and development tools
RUN apt-get update -y && apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
    apt-get update -y

# Install gcc 4.9
RUN apt-get -y -qq gcc-4.9 g++-4.9 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 90 && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 90
