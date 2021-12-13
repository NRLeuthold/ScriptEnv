#!/bin/sh

#USERS##############################################################
echo '----------'
echo 'List Users'
echo '----------'
awk -F: '{print $1}' /etc/passwd
echo '----------'
echo '''
'''

#FIREWALL###########################################################
echo '----------'
echo 'Enable Firewall'
echo '----------'
sudo ufw status
sudo ufw enable
sudo ufw status
echo '----------'
echo '''
'''

#DISABLE SERVICES###################################################
echo '----------'
echo 'Disable FTPD, Samba, & Apache2'
echo '----------'
sudo service pure-ftpd stop
sudo service smbd stop
sudo service /etc/init.d/apache2 stop
echo '----------'
echo '''
'''

#List Software######################################################
echo '----------'
echo 'List Installed Software'
echo '----------'
dpkg -l
echo '----------'
echo '''
'''

#List Ports#########################################################
echo '----------'
echo 'All Listening Ports'
echo '----------'
netstat -tulpn
echo '----------'
echo '''
'''

#EVERYTHING ELSE####################################################
