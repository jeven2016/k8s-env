#!/bin/sh
###############
# openssl req
################
#-newkey rsa:4096-创建新的证书请求和4096位RSA密钥。默认值为2048位。
#-x509 -创建X.509证书。
#-sha256 -使用265位SHA（安全哈希算法）。
#-days 3650 -认证证书的天数。 3650是10年。您可以使用任何正整数。
#-nodes -创建没有密码的密钥。
#-out server.crt -指定将新创建的证书写入的文件名。您可以指定任何文件名。
#-keyout server.key -指定要写入新创建的私钥的文件名。您可以指定任何文件名。

##############
# 在-subj行中指定的字段
##############
#C=-国家/地区名称。 ISO的两个字母缩写。
#ST= -州或省名。
#L= -地区名称。您所在的城市的名称。
#O= -您组织的全名。
#OU= -组织单位。
#CN= -完全限定的域名。

# generate crt and key files for nginx
openssl req -newkey rsa:2048 \
            -x509 \
            -sha256 \
            -days 3650 \
            -nodes \
            -out server.crt \
            -keyout server.key \
            -subj "/C=CN/ST=Jiangsu/L=Nanjing/O=Zhongfu/OU=Cloud/CN=*.cloud.zhongfu.net"

# generate corresponding pem files for keycloak
#openssl rsa -in server.key -text > server.key.pem
#openssl x509 -inform PEM -in server.crt > server.crt.pem
#chmod 755 server.key.pem