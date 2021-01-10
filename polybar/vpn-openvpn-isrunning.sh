#!/bin/sh

connection=$(pgrep -a openvpn$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1)

if [ -n "$connection" ]; then
    echo "%{T1} ON%{T-}"
else 
    echo "%{T1} OFF%{T-}"
fi
