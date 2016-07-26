#!/bin/sh 

# This script is to take care of the fleeting DNS cache issue with MacOS after 
# a reboot.

# OS X Yosemite and later
# Use the following Terminal command to reset the DNS cache in OS X v10.10.4 or later:
sudo killall -HUP mDNSResponder
# Use the following Terminal command to reset the DNS cache in OS X v10.10 through v10.10.3:
sudo discoveryutil mdnsflushcache
# OS X Mavericks, Mountain Lion, and Lion
# Use the following Terminal command to reset the DNS cache in OS X v10.9.5 and earlier:
sudo killall -HUP mDNSResponder
# Mac OS X Snow Leopard
# Use the following Terminal command to reset the DNS cache in OS X v10.6 through v10.6.8:
sudo dscacheutil -flushcache

