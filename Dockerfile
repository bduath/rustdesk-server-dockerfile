FROM debian

RUN apt update \
 && apt install -y curl wget \
 && apt clean all

RUN cd /root \
 && wget https://github.com/rustdesk/rustdesk-server/releases/download/1.1.12/rustdesk-server-linux-amd64.zip \
 && unzip rustdesk-server-linux-amd64.zip -o /opt \
 && rm -rf rustdesk-server-linux-amd64.zip
 
