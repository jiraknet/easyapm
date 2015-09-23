#!/bin/sh
############# EASY_APM BASIC ENV SET ############################
EASY_APM_DIR="/usr/local/src/EASY_APM"
source $EASY_APM_DIR/EASY_APM_ENV.sh
##################################################################


# BASIC PACKAGE INSTALL by apt

apt-get -y install \
arpwatch \
autoconf \
bison \
make \
iptraf \
rdate \
g++ \
gawk \
gcc \
gettext \
iputils-arping \
irqbalance \
libncurses5-dev \
libreadline6-dev \
libtool \
lshw \
make \
patch \
python-dev \
rdate \
rsync \
snmpd \
sysstat \
whois \
xinetd 
