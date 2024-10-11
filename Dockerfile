FROM debian

RUN cd root && \
 wget https://github.com/rustdesk/rustdesk-server/releases/download/1.1.12/rustdesk-server-hbbr_1.1.12_amd64.deb && \
 wget https://github.com/rustdesk/rustdesk-server/releases/download/1.1.12/rustdesk-server-hbbs_1.1.12_amd64.deb && \
 dpkg -i rustdesk-server-hbbr_1.1.12_amd64.deb && \
 dpkg -i rustdesk-server-hbbs_1.1.12_amd64.deb && \
 rm -rf rustdesk-server-hbbr_1.1.12_amd64.deb rustdesk-server-hbbs_1.1.12_amd64.deb
 
