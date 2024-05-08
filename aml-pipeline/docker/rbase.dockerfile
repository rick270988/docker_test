FROM r-base:4.2.0

ENV LANG=C.UTF-8  LC_ALL=C.UTF-8

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get update -y \
    wget \
    curl \
    gnupg2


RUN  apt-get update -y \
     make \
     zliblg-dev \
     libcurl4--openssl-dev \
     libssl-dev \
     libfreetype6-dev \
     libfribidi-dev \
     libharfbuzz-dev \
     libjpeg-dev \
     libpng-dev \
     libtiff-dev \
     libicu-dev \
     pandoc \
     libxml2-dev \
     git \
     libgit2-dev

RUN bash -c " \
       R  -e \"  \
         install.packages('devtools'); \
         library('devtools'); \
       \" \
   "     
