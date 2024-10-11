FROM debian

RUN apt update \
 && apt install -y curl wget unzip \
 && apt clean all

RUN cd /root \
 && https://github.com/rustdesk/rustdesk-server/releases/download/1.1.12/rustdesk-server-linux-amd64.zip >> /dev/null \
 && unzip rustdesk-server-linux-amd64.zip \
 && rm -rf rustdesk-server-linux-amd64.zip
 
