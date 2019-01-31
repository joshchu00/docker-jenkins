FROM jenkins/jenkins:2.153-alpine

USER root

RUN adduser jenkins root

USER jenkins
