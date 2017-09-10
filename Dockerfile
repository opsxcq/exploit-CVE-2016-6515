FROM ubuntu:xenial 

LABEL maintainer "opsxcq@strm.sh"

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    openssh-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


COPY packages /packages
RUN dpkg -i /packages/* && \
    mkdir /var/run/sshd

COPY sshd_config /etc/ssh/

EXPOSE 22

COPY main.sh /
ENTRYPOINT ["/main.sh"]
CMD ["default"]

