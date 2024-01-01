#! /bin/bash
echo "Enter the first starting IP address : "
read FirstIP
echo "Enter the last octet of thr last IP address : "
read LastOctetIP
echo "Enter the port number you want to Scan for : "
read port
nmap -sT $FirstIP-$LastOctetIP -p $port >/dev/null -oG MYSQLscan
cat MYSQLscan | grep open > MYSQLscan2
cat MYSQLscan2