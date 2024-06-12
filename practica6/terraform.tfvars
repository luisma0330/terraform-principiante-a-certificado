virginia_cidr = "10.10.0.0/16"
# public_subnet = "10.10.0.0/24"
# private_subnet = "10.10.1.0/24"
subnets = ["10.10.0.0/24", "10.10.1.0/24"]

tags = {
  "env"         = "dev"
  "owner"       = "LuisOjeda"
  "cloud"       = "AWS"
  "IaC"         = "Terraform"
  "IaC_Version" = "1.8.3"
}

sg_ingress_cidr = "0.0.0.0/0"

ec2_specs = {
  "ami"           = "ami-0d191299f2822b1fa"
  "instance_type" = "t2.micro"
}