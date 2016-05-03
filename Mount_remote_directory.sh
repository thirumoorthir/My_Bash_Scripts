#!/bin/bash
# This script is written by Thirumoorthi, @thiru978 for his personal use in his system

# first lets check did mount is already happened 

l=$(mount | grep 167| wc|awk 'FS="\t" {print $1}')

echo $l

d=$(ls -d  | grep Ads| wc |awk 'FS="\t" {print $1}')

echo $d

if [ $d == 0 ];then
mkdir Ads
echo "Ads Directory created for the first time use"
fi
echo "***Ads mount point Already available no worriers****"


if  [ $l -gt 0 ] ;
then
echo " Directory is already mounted***YEEEEHHHHHHH****"
fi
 

n=tramasw
cd ~$USERNAME/Desktop/Ads

echo "Please Enter your id"
# mount.cifs //"Remote Server IP Address"/TSHome$/$n /home/$USERNAME/Desktop/Ads -o user=$n,domain=ADS
