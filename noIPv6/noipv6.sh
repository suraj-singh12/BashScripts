#!/bin/bash

echo "---------------------------------------------------------------------------------------------------"
echo "                                                                                                    "
echo "              NO Ipv 6 "
echo "                                                                                                  "
echo "----------------------------------------------------------------------------------------------------"

sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1

echo " No Ipv 6 - sucess "

