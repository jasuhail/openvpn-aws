variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-029cb972e1b8a4bca"
    ap-south-2 = "ami-0d57508c06546dc64"
  }
}

