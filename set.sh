#!/bin/bash

if [ -f /etc/php5/fpm/conf.d/networkbench.ini ]; then
	modify_file /etc/php5/fpm/conf.d/networkbench.ini
	/etc/init.d/php5-fpm start
fi

if [ -f /etc/php5/apache2/conf.d/networkbench.ini ]; then
	modify_file /etc/php5/apache2/conf.d/networkbench.ini
else
	if [ -f /etc/php5/cli/conf.d/networkbench.ini ]; then
		cp /etc/php5/cli/conf.d/networkbench.ini /etc/php5/apache2/conf.d/
		modify_file /etc/php5/apache2/conf.d/networkbench.ini
	else
		echo "The networkbench.ini has not in PHP environment."
	fi
fi

function modify_file() {
	sed -i "s#^nbs.license_key =.*#nbs.license_key = \"${TINGYUN_LICENSE_KEY}\"#g" $1
    sed -i "s#^nbs.app_name=.*#nbs.app_name = \"${TINGYUN_APP_NAME}\"#g" $1
}