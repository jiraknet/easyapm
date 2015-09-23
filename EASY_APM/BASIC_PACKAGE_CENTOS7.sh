#!/bin/sh
############# EASY_APM BASIC ENV SET #############################
EASY_APM_DIR="/usr/local/src/EASY_APM"
source $EASY_APM_DIR/EASY_APM_ENV.sh
##################################################################


# BASIC PACKAGE INSTALL by yum
yum -y install yum-fastestmirror
yum -y update
yum -y install \
arpwatch \
autoconf \
automake \
bind-utils \
bison \
bzip2 \
bzip2-devel \
cronie-noanacron \
crontabs \
file \
flex \
gcc-c++ \
gdbm \
gdbm-devel \
gettext \
groff \
iptraf \
iptraf \
irqbalance \
krb5-devel \
libtool \
libtool-libs \
libtool-ltdl-devel \
logrotate \
redhat-lsb-core \
mailx \
make \
man \
ncurses \
ncurses-devel \
net-snmp \
net-tools \
ntpdate \
ntsysv \
openssh-clients \
openssl-devel \
pam-devel \
patch \
pcre \
pcre-devel \
prelink \
python-devel \
rdate \
readline \
readline-devel \
rsync \
sendmail-cf \
setuptool \
sqlite-devel \
sysstat \
telnet \
unzip \
vim-enhanced \
wget \
which \
whois \
xinetd \
zlib-devel
