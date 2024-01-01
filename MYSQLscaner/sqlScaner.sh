#! /bin/bash

# This Script is Intended to Find Hosts Wit My SQL installed.

nmap -sT 127.0.0.1/24 -p 3306 >/dev/null -oG MYSQLscan
cat MYSQLscan | grep open >MYSQLscan2
cat MYSQLscan2