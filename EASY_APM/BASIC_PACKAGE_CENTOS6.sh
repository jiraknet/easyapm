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
db4-devel \
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
jwhois \
krb5-devel \
libc-client \
libc-client-devel \
libtool \
libtool-libs \
libtool-ltdl-devel \
logrotate \
mailx \
make \
man \
ncurses \
ncurses-devel \
net-snmp \
netconfig \
ntpdate \
ntsysv \
openssh-clients \
openssl-devel \
pam-devel \
patch \
pcre \
pcre-devel \
prelink \
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
xinetd \
zlib-devel
