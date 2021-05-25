#!/bin/bash
    sudo apt update && apt upgrade -y
    sudo apt install -y libc6 libffi7 libgcc-s1 libgmp10 liblz4-1 liblzo2-2 libmariadb3 libpcap0.8 libssl1.1  libstdc++6 zlib1g bridge-utils net-tools libsasl2-2  iproute2  sqlite3  libsqlite3-0 iptables  python-pkg-resources python-netaddr wget
    
        wget https://openvpn.net/downloads/openvpn-as-bundled-clients-latest.deb
    sudo dpkg -i openvpn-as-*.deb
            rm -r openvpn-as-*.deb
        
        wget https://openvpn.net/downloads/openvpn-as-latest-ubuntu20.amd_64.deb
    sudo dpkg -i openvpn-as-*.deb
            rm -r openvpn-as-*.deb

    sudo passwd openvpn

# Troubleshoot 
# /usr/local/openvpn_as/bin/ovpn-init
# apt --fix-broken install

