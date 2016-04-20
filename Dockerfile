FROM alpine:latest
MAINTAINER bluebu <bluebuwang@gmail.com>

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------

RUN \
  apk --update --upgrade add \
      py-pip \
      # openssh \
      privoxy \
  && rm /var/cache/apk/*

RUN pip install shadowsocks

#------------------------------------------------------------------------------
# Populate root file system:
#------------------------------------------------------------------------------

ADD rootfs /

#------------------------------------------------------------------------------
# Expose ports and entrypoint:
#------------------------------------------------------------------------------
EXPOSE 8118 7070

# ENTRYPOINT ["/usr/sbin/privoxy", "--no-daemon", "/etc/privoxy/config"]
ENTRYPOINT ["/entrypoint.sh"]
