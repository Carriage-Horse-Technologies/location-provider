resource "aws_vpc" "AlloLocationProviderVPC" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "10.0.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"

  tags = {
    Name  = "prod-AlloLocationProviderProgect-vpc"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProviderProgect-vpc"
    Group = "AlloLocationProvider"
  }
}
