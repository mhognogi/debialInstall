#!/bin/sh

sudo apt-get purge gimp
sudo apt-get install ppa-purge 
sudo ppa-purge ppa:otto-kesselgulasch/gimp  
sudo ppa-purge ppa:otto-kesselgulasch/gimp-edge
sudo apt-get update
sudo apt-get install gimp

gimp
