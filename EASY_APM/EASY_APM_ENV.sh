############# EASY_APM BASIC ENV SET ##############################
DEST_DIR="/usr/local"
EASY_APM_INI="$EASY_APM_DIR/config.ini"
EASY_APM_CONF="$EASY_APM_DIR/CONF"
EASY_APM_LIB="$EASY_APM_DIR/LIB"
EASY_APM_SOURCE="$EASY_APM_DIR/SOURCE"
EASY_APM_PATCH="$EASY_APM_DIR/PATCH"
ARCH=$(/bin/uname -m)
SERVER_IP=$(grep SERVER_IP $EASY_APM_INI|cut -f2 -d'=')
MANAGE_MAIL=$(grep MANAGE_MAIL $EASY_APM_INI|cut -f2 -d'=')
MANAGE_MAIL_USER=$(echo $MANAGE_MAIL|cut -f1 -d'@')
MANAGE_MAIL_DOMAIN=$(echo $MANAGE_MAIL|cut -f2 -d'@')
DOMAIN_NAME=$(grep DOMAIN_NAME $EASY_APM_INI|cut -f2 -d'=')
MANAGE_USER=$(grep MANAGE_USER $EASY_APM_INI|cut -f2 -d'=')
SNMP_COMM=$(grep SNMP_COMM $EASY_APM_INI|cut -f2 -d'=')
LSB_ID=$(lsb_release -is)
LSB_RELEASE=$(lsb_release -rs|cut -f1 -d'.')
##################################################################


############# EASY_APM LINUX DISTRIBUTION & VERSION SET #########
if [ $LSB_ID == "CentOS" ];
then
    if [ $LSB_RELEASE -lt "7" ];
    then
        LINUX_VER="CentOS-6"
    else
        LINUX_VER="CentOS-7"
    fi
elif [ $LSB_ID == "Ubuntu" ];
then
    if [ $LSB_RELEASE -lt "14" ];
    then
        LINUX_VER="Ubuntu-12"
    else
        LINUX_VER="Ubuntu-14"
    fi
else
    LINUX_VER="ETC"
fi
##################################################################


############# EASY_APM APM VERSION SET ##########################
EASY_APM_APP_APR="apr-1.5.2"
EASY_APM_APP_APR_UTIL="apr-util-1.5.4"
EASY_APM_APP_CMAKE="cmake-3.3.1"
EASY_APM_APP_HTTPD_2_4="httpd-2.4.16"
EASY_APM_APP_MARIADB_10_0="mariadb-10.0.21"
EASY_APM_APP_MYSQL_5_5="mysql-5.5.36"
EASY_APM_APP_PHP_5_4="php-5.4.42"
EASY_APM_APP_PROFTPD="proftpd-1.3.4d"
##################################################################


############# EASY_APM HTTP MOD VERSION SET #####################
EASY_APM_APP_CBAND="mod-cband-20100403"
EASY_APM_APP_LUA="lua-5.2.4"
EASY_APM_APP_MODSECURITY_2_9="modsecurity-2.9.0"
EASY_APM_APP_PCRE="pcre-8.37"
##################################################################


############# EASY_APM LIB VERSION SET ##########################
EASY_APM_APP_CURL="curl-7.44.0"
EASY_APM_APP_EXPAT="expat-2.1.0"
EASY_APM_APP_FREETYPE2="freetype-2.6"
EASY_APM_APP_GD="pierrejoye-gd-libgd-733361a31aab"
EASY_APM_APP_ICONV="libiconv-1.14"
EASY_APM_APP_LIBJPEG="jpegsrc.v8d"
EASY_APM_APP_LIBMCRYPT="libmcrypt-2.5.8"
EASY_APM_APP_LIBPNG="libpng-1.6.1"
EASY_APM_APP_LIBTIFF="tiff-4.0.3"
EASY_APM_APP_LIBXML2="libxml2-2.9.1"
EASY_APM_APP_LIBXSLT="libxslt-1.1.28"
EASY_APM_APP_MCRYPT="mcrypt-2.6.8"
EASY_APM_APP_MHASH="mhash-0.9.9.9"
EASY_APM_APP_ZENDGUARD_54_32="ZendGuardLoader-70429-PHP-5.4-linux-glibc23-i386"
EASY_APM_APP_ZENDGUARD_54_64="ZendGuardLoader-70429-PHP-5.4-linux-glibc23-x86_64"
EASY_APM_APP_ZLIB="zlib-1.2.8"
##################################################################
