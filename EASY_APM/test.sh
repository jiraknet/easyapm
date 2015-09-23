#!/bin/sh
############# EASY_APM BASIC ENV SET ##############################
EASY_APM_DIR="/usr/local/src/EASY_APM"
source $EASY_APM_DIR/EASY_APM_ENV.sh
##################################################################


echo "#### EASY_APM PATH INFO #################################"
echo "EASY_APM_DIR : $EASY_APM_DIR"
echo "EASY_APM_INI : $EASY_APM_INI"
echo "EASY_APM_CONFIG_DIR : $EASY_APM_CONF"
echo "EASY_APM_LIB_DIR : $EASY_APM_LIB"
echo "EASY_APM_SOURCE_DIR : $EASY_APM_SOURCE"
echo "EASY_APM_PATCH_DIR : $EASY_APM_PATCH"
echo "#########################################################"
echo ""


echo "#### SERVER INFO ########################################"
echo "LINUX VERSION : $LINUX_VER"
echo "SERVER ARCH : $ARCH"
echo "#########################################################"
echo ""


echo "#### INSTALL CONFIG INFO ################################"
echo "SERVER IP ADDR : $SERVER_IP"
echo "MANAGER EMAIL : $MANAGE_MAIL"
echo "SYSTEM ACCOUNT : $MANAGE_USER"
echo "DOMAIN NAME : $DOMAIN_NAME"
echo "#########################################################"
echo ""



cd $EASY_APM_DIR
