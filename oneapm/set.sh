#!/bin/bash

function modify_file() {
    sed -i "s#^oneapm.key = .*#oneapm.key = \"${ONEAPM_LICENSE_KEY}\"#g" $1
    sed -i "s#^oneapm.appname=.*#oneapm.appname=${ONEAPM_APP_NAME}#g" $1
}

if [ -f /etc/php5/apache2/php.ini ]; then
    echo ${ONEAPM_LICENSE_KEY}
    echo ${ONEAPM_APP_NAME}
    modify_file /etc/php5/apache2/php.ini
else
    echo "The php.ini is not found."
fi