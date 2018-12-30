from ubuntu:xenial
COPY containerStart.sh /root/containerStart.sh
COPY conf/ /root/conf/
EXPOSE 1194/udp 1194/tcp
ENTRYPOINT ["/bin/bash","-c", "/root/containerStart.sh"]
