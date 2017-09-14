FROM jenkins:2.60.2

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

USER root
RUN apt-get -y update && apt-get install -y cifs-utils

USER ${user}

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY ./*.groovy /usr/share/jenkins/ref/init.groovy.d/

EXPOSE 445

EXPOSE 22

# USER root

# COPY entrypoint.sh /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]


