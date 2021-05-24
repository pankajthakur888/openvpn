# openvpn
ubuntu-18-04-lts-set-up-openvpn-server-in-5-minutes


Introduction OpenVPN is a full-featured SSL VPN (virtual private network). It implements OSI layer 2 or 3 secure network extension using the SSL/TLS protocol. It is an open source software and distributed under the GNU GPL. A VPN allows you to connect securely to an insecure public network such as wifi network at the airport or hotel. VPN is also required to access your corporate or enterprise or home server resources. You can bypass the geo-blocked site and increase your privacy or safety online. This tutorial provides step-by-step instructions for configuring an OpenVPN server on Ubuntu Linux 18.04 LTS server.


A note about IP address
Most cloud servers have two types of IP address:

Public static IP address directly assigned to your box and routed from the Internet. For example, Linode, Digital Ocean, and others gives you direct public IP address.
Private static IP address directly attached to your server and your server is behind NAT with public IP address. For example, AWS EC2/Lightsail give you this kind of NAT public IP address.
The script will automatically detect your networking setup. All you have to do is provide correct IP address when asked for it.


Step 1 – Update your system

Step 2 – Find and note down your IP address

Step 3 – Download and run openvpn-install.sh script

Step 4 – Connect an OpenVPN server using IOS/Android/Linux/Windows client

Step 5 - Verify/test the connectivity

Step 6 - Adding or removing OpenVPN client

A note about trouble shooting OpenVPN server and client issues
Check OpenVPN server for errors using the jourlctl command:
$ sudo journalctl --identifier openvpn
## OR filter it using the grep command/egrep command ##
$ sudo journalctl -x -e | grep -i 'error'
$ sudo journalctl -x -e | egrep -i 'error|warn|your_ip_here'
$ sudo journalctl -xe -u openvpn-server@server.service

