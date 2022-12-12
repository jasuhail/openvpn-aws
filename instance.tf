resource "aws_instance" "openvpn" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name      = "EC2Acces"
  # the VPC subnet
  subnet_id = aws_subnet.openvpn-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.openvpn_sg.id]

  tags = {
    Name = "OpenVpn"
  }
}


