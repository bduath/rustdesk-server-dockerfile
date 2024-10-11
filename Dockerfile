FROM debian

RUN apt update \
 && apt install -y curl wget \
 && apt clean all
 
