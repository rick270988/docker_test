FROM r-base:4.2.0  

ENV LANG=C.UTF-8  LC_ALL=C.UTF-8

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y \
    wget \
    curl 
 

CMD ["bash"]