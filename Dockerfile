FROM ubuntu:latest

COPY ENTRYPOINT.sh /

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    nano \
    sudo \
    wireshark \
    tcpdump \
    git \
    && chmod +x /ENTRYPOINT.sh


VOLUME /home/nano
WORKDIR /home/nano



RUN git clone git://github.com/mininet/mininet \
    && cd mininet \
    && git checkout -b 2.2.1 2.2.1 \
    && cd .. \
    && sed -i 's/git:\/\/openflowswitch.org\/openflow.git/https:\/\/github.com\/mininet\/openflow.git/g' mininet/util/install.sh \
    && sed -i 's/git:\/\/gitosis.stanford.edu\/oflops.git/https:\/\/github.com\/mininet\/oflops.git/g' mininet/util/install.sh \
    && mininet/util/install.sh -a

ADD /lib/modules /lib/modules

EXPOSE 6633 6653

ENTRYPOINT ["/ENTRYPOINT.sh"]
