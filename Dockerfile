FROM scratch

LABEL org.opencontainers.image.authors="tumi"

ADD *.tar.gz /
RUN sed -i '/\/etc\/hosts/d' /lib/upgrade/keep.d/base-files-essential
