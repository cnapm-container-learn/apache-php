#!/usr/bin/expect

set timeout 30

spawn /OneAPM/oneapm-php5-linux-install-script/oneapm-install install --license=XXXXXXXCWQ8f457HTVgTWA0VCB24a8XXXXXXXXANG4a6fVAESwZUFVRX4a9fBQA
aAwZXXXX=

set timeout 200
expect "*Selection (1-2, 0 to exit or all): "
send "1\r"

set timeout 12000
expect "*Please input the absolute path of php.ini: "
send "/etc/php5/apache2/php.ini\r"

expect eof