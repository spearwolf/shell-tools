#!/usr/bin/env bash
if [ -z "$1" ]; then
  >&2 cat <<\EOF
ERROR
  as first argument, please enter a <hostname> or <ip>

EXAMPLES
  $ show-open-ports localhost
  $ show-open-ports 192.168.178.40

Thank you and have a nice day!
EOF
else
  pkexec nmap -sT -O $1 # host or ip
fi
