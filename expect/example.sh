#!/usr/bin/expect

spawn telnet $SERVER
expect "Username:"
send "myuser\r"
expect "Password:"
send "mypass\r"
expect eof
