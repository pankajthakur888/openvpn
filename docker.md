# OpenVPN Docker Setup Guide

## Step 1: Download OpenVPN Image
Download the OpenVPN tar file from the repository.
```
curl --output open-vpn.tar https://raw.githubusercontent.com/pankajthakur888/openvpn/refs/heads/main/open-vpn.tar
```
## Step 2: Load the Docker Image
Load the OpenVPN image into Docker.
```
docker load -i open-vpn.tar
```

## Step 3: Verify the Loaded Image
Check if the OpenVPN image has been loaded correctly.
```
docker images
```
Expected output:
```
open-vpn                         latest               8c5b1a283c2c   6 days ago      17.1MB
```

## Step 4: Create a Docker Volume for OpenVPN Data
Create a persistent volume to store OpenVPN configuration data.
```
docker volume create --name ovpn-data
```

## Step 5: Generate OpenVPN Configuration
Run a temporary OpenVPN container to generate the required configuration files.
```
docker run --rm \
  -v ovpn-data:/etc/openvpn \
  openvpn \
  ovpn_genconfig -u tcp://$(hostname -I | awk '{print $1}'):443
```

## Step 6: Start the OpenVPN Server
Run the OpenVPN server in detached mode.
```
docker run -d \
  --name open-vpn \
  -v ovpn-data:/etc/openvpn \
  -p 443:1194/tcp \
  --cap-add=NET_ADMIN \
  openvpn
```

## Step 7: Generate a Client Configuration File
Create a client configuration file to connect to the OpenVPN server.
```
docker run --rm \
  -v ovpn-data:/etc/openvpn \
  openvpn \
  ovpn_getclient pankaj > pankaj.ovpn
```

## Notes:
- Replace `pankaj` with the desired client name.
- Ensure that port 443 is open on your firewall for OpenVPN traffic.
- The generated `.ovpn` file is needed to configure the VPN client.

