FROM scratch

LABEL org.opencontainers.image.authors="tumi"

ADD *.tar.gz /

RUN sed -i 's/tar c\${TAR_V} -C \/ -T "\$CONFFILES"/tar c\${TAR_V} -C \/ --exclude="\/etc\/hosts" -T "\$CONFFILES"/g' /sbin/sysupgrade
RUN sed -i 's/cat "\$CONFFILES"/grep -v "\/etc\/hosts" "\$CONFFILES"/g' /sbin/sysupgrade
