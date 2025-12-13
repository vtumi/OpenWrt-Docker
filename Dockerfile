FROM scratch

LABEL org.opencontainers.image.authors="tumi"

ADD *.tar.gz /

RUN sed -i 's|sed -i -e '"'"'s,^/,,'"'"' "$CONFFILES"|sed -i -e '"'"'s,^/,,'"'"' -e '"'"'/etc\\/hosts/d'"'"' "$CONFFILES"|g' /sbin/sysupgrade
RUN sed -i 's/cat "\$CONFFILES"/grep -v "\/etc\/hosts" "\$CONFFILES"/g' /sbin/sysupgrade
