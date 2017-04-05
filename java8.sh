#!/bin/sh
# install java 8 on ubuntu

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

echo $'\nJava 8 was installed\n'
java -version
