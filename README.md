# Manage OpenVPN with OpenVPN Access Server

What is OpenVPN?
OpenVPN is a popular software package which creates encrypted tunnels for secure data transfer. In this guide, you will learn to configure your Linode as a VPN gateway using the OpenVPN Access Server software, and connect your Windows, macOS, or Linux computer to it.

OpenVPN Access Server requires a paid license to use more than two connected devices.

Before You Begin
Ensure that you have not already installed OpenVPN before starting this guide.
Ensure that you have root access to your Linode or a user account with sudo privilege. For information about creating a user account with sudo privilege, see Add a Limited User Account.
Update your system. For more information, see Install Software Updates.
Allow TCP traffic through port 943 and UDP through port 1194 on your firewall. For more information, see Add Rules.

https://openvpn.net/download-open-vpn/

Select Your Operating System
-------------------------------------------------------------------------------------------------------------------------

Ubuntu 20.04.2.0 LTS (Focal Fossa)
  sudo curl -s https://raw.githubusercontent.com/pankajthakur888/openvpn/main/install-open-vpn-ubuntu-server18.04.sh | bash

Ubuntu 18.04.5 LTS (Bionic Beaver)
  sudo curl -s https://raw.githubusercontent.com/pankajthakur888/openvpn/main/install-open-vpn-ubuntu-server20.04.sh | bash


CentOS7
  yum install wget
  wget https://raw.githubusercontent.com/pankajthakur888/openvpn/main/install-open-vpn-centos7.sh && sed -i -e 's/\r$//' centos7.sh && chmod 755 centos7.sh && ./centos7.sh



Please enter "passwd openvpn" to set the initial
administrative password, then login as "openvpn" to continue
configuration here: https://172.31.31.43:943/admin

To reconfigure manually, use the /usr/local/openvpn_as/bin/ovpn-init tool.

+++++++++++++++++++++++++++++++++++++++++++++++
Access Server 2.8.8 has been successfully installed in /usr/local/openvpn_as
Configuration log file has been written to /usr/local/openvpn_as/init.log


Access Server Web UIs are available here:
Admin  UI: https://172.31.31.43:943/admin
Client UI: https://172.31.31.43:943/
+++++++++++++++++++++++++++++++++++++++++++++++

https://your-public-ip-address:943/admin

https://your-public-ip-address:943/

username:- openvpn
password:- root "your-username"
/usr/local/openvpn_as/bin/ovpn-init

