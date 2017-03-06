#!/bin/sh

# author: Li Zhixiong

# this shell scripts find the aether.exe process, and starts gdb to debug aether.exe
# no args required.

#exec ddd --pid `ps aux |grep lijing | grep linux26-x86_64/bin/aether | grep -v gdb | grep -v ddd | grep -v grep | awk '{print $2}' | head -n1`

tty=`tty`
tty=${tty:5}

exec ddd --pid `ps ux | grep linux26-x86_64/bin/aether | grep $tty | grep -v gdb | grep -v ddd | grep -v grep | awk '{print $2}' | head -n1`
