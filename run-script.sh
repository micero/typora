#!/usr/bin/expect
spawn ./create-package.sh x64
expect "/home/builder/typora/RPMs"
send "n\r"
expect "/home/builder/typora/work"
send "n\r"
expect "Use this archive instead of downloading a new one?"
send "y\r"
expect "Install the package now?"
send "n\r"

spawn ./create-package.sh ia32
expect "/home/builder/typora/RPMs"
send "n\r"
expect "/home/builder/typora/work"
send "n\r"
expect "Use this archive instead of downloading a new one?"
send "y\r"
expect "Install the package now?"
send "n\r"
