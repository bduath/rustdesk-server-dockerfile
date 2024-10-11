FROM debian

RUN apt update \
 && apt install -y curl wget \
 && apt clean all

RUN cd /root && \
 curl https://github.com/rustdesk/rustdesk-server/releases/download/1.1.12/rustdesk-server-hbbr_1.1.12_amd64.deb -o hbbr.deb && \
 curl https://github.com/rustdesk/rustdesk-server/releases/download/1.1.12/rustdesk-server-hbbs_1.1.12_amd64.deb -o hbbs.deb && \
 dpkg -i hbbr.deb && \
 dpkg -i hbbs.deb && \
 rm -rf hbbr.deb hbbs.deb
 
