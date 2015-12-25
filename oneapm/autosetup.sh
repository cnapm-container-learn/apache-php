#!/usr/bin/expect

set timeout 30

spawn /app/tingyun-agent-php-1.4.1.x86_64.bin

set timeout 2000
expect "*Enter choice (1-2, 0 to exit): "
send "1\r"

set timeout 300
expect "*license key*"
send "123456\r"

set timeout 300
expect "*website*"
send "123456\r"

expect eof