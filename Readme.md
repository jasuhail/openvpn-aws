# terraform-aws-openvpn

A Terraform module to deploy a OpenVPN server on AWS.  

The module supports multi region deployment & values in yaml format. 

## Prerequisites
Before using this module, you'll need to get openvpn ami from the specific region you want to deploy.



## Variables
| Variable Name | Type | Required |Description |
|---------------|-------------|-------------|-------------|
|`AWS_REGION`|`string`|Yes|Specify the region you want to deploy your VPN Server.|
|`AMIS`|`string`|Yes|Get OpenVpn ami specific for the region and add it here.| 

## Run

Just run terrorm init, plan and apply. You are ready with server. SSH to the server ssh -i keylocation root@ip, type YES and press enter until the initial setup was completed.

Now login again back with ssh -i keylocation openvpnas@i then set password for account openvpn.

sudo passwd openvpn - enter password twice.

Now logon to https://ec2public/admin and username openvpn and password.

Now logon to https://ec2public/ and username openvpn and password, downlaod th ovpn config file and add it to OPENVPN client to connect your VPN server.

Cheers:)
