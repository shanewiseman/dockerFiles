from ubuntu:xenial
COPY containerStart.sh /root/containerStart.sh
COPY dhcpd.conf /root/
EXPOSE 67/udp
ENTRYPOINT ["/bin/bash","-c", "/root/containerStart.sh"]
