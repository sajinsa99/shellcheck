FROM ubuntu

LABEL maintainer="bfablet@gmail.com"

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install dash bash ksh csh tcsh zsh
RUN apt-get -y install dos2unix shellcheck
