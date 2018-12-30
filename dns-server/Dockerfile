from ubuntu:xenial
COPY containerStart.sh /root/containerStart.sh
COPY zones/ /root/zones/
COPY config/ /root/config/
EXPOSE 53/udp 53/tcp
ENTRYPOINT ["/bin/bash","-c", "/root/containerStart.sh"]
