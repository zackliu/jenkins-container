FROM jenkins:2.60.3

ADD entrypoint.sh /entrypoint.sh

EXPOSE 22

USER root

RUN apt-get update && apt-get install -y sudo

ENTRYPOINT ["/entrypoint.sh"]