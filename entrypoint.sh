#!/bin/bash

chown -R jenkins:jenkins ${JENKINS_HOME}

su jenkins

/bin/tini -- /usr/local/bin/jenkins.sh