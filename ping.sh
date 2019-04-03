#!/bin/bash 

#this script will pint a site that is inputed in the prompt

declare -rx ping="/sbin/ping"
declare -rx trace="/usr/sbin/traceroute"

if test ! -z "BASH"
  then
  printf "please change your shell to bash"
  exit 192
fi
if test ! -x "$ping"
  then
  printf "the command $ping is not available\n" >&2
  exit 192
fi

f test ! -x "$trace"
  then
  printf "the command $trace is not available\n" >&2
  exit 192
fi


