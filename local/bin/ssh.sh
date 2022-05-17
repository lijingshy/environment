#!/usr/bin/expect

set host    [lrange $argv 0 0]
set passwd  li4jing

spawn -noecho ssh -X $host 

expect {
"ssh:"
{
    exit
}
"(yes/no)" 
{
    send "yes\n"
    #expect "password:"
    #send "$passwd\n"
    exp_continue
}
"password:" 
{
    send "$passwd\n"
}
}

expect "$ "
interact

#send "echo hihi >> aaaaaa\r"
#send "exit\r"
#expect eof
#exit

