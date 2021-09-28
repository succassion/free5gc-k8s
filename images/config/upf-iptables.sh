#!/bin/sh

### UPF IPtables forwarding rules configuration


iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -I FORWARD 1 -j ACCEPT
iptables -t nat -A POSTROUTING -o upfgtp -j MASQUERADE

