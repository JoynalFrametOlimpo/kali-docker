FROM kalilinux/kali-rolling
MAINTAINER JoynalFrametOlimpo

ENV TZ=America/Guayaquil

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime

RUN set -x; \
      apt-get update \
      && apt-get install -y --no-install-recommends \
      fish \
      vsftpd

RUN mkdir /src

CMD ["bash"]
