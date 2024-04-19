# Updating file to test image build
# basic nginx dockerfile starting with Ubuntu 20.04
#
FROM ubuntu:20.04

RUN \
    --mount=type=cache,target=/var/cache/apt \
    apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata && apt-get -y install sudo ffmpeg python3 python3-pip && pip3 install requests
ADD main.py .
