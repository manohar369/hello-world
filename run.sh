#!/bin/bash
sudo apt-get install openjdk-8-jdk -y
java -version
JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export JAVA_HOME
PATH=$PATH:$JAVA_HOME
source ~/.bash_profile
apt -y install wget
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
systemctl start jenkins
systemctl enable jenkins
