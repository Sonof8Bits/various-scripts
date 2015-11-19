#!/bin/bash
##
## http://sonof8bits.com/
##
## Makes SCP a little more OP
##
## Usage:
## ezSCP.sh some.file /path/to/folder
##
## To make things even easier and faster, set-up ssh keys and add
## an alias pointing to this script in .profile.
## 
## Multiple ssh servers, just copy this file and give it an appropriate name,
## for example:
## ezSCPvps.sh for your VPS, ezSCPrpi.sh for your Raspberry Pi,
## ezSCPmac.sh for your Mac.
##
## Fill in your server address (can also be an IP) and port below:
##

server=example.com
port=22

## IFS so things won't screw up if a folder or file contains a space in the name.
IFS='\'
## Set the folder variable now that IFS is keeping things in check.
files="$*"
## Roll out!
scp -P $port -r $files $server:~/

exit
