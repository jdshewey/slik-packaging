#!/bin/bash
clear
echo -e "\e[31mWARNING: IF YOU PROCEED ANY UNCOMMITTED CHANGES TO ANYTHING IN
/opt/slik-packaging MAY BE LOST. ARE YOU SURE YOU WISH TO CONTINUE?\e[0m"
echo "
Y/N?"

read PROMPT

case $PROMPT in
y|Y)
	/opt/slik-packaging/slik/uninstall.sh
	rm -rf /opt/slik-packaging/slik
	rm -rf /opt/slik-packaging/salt-formula-openssh
	rm -rf /opt/slik-packaging/salt-formula-freeipa
	;;
esac
