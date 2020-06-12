#!/bin/bash
yum install -y wget
yum install -y java-1.8.0-openjdk-devel
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | tee /etc/yum.repos.d/jenkins.repo
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install -y jenkins
yum install jenkins java-1.8.0-openjdk –y
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
