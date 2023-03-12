resource "aws_subnet" "AlloLocationProviderPublicSubnet1" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.0.0/25"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "ap-northeast-1a"

  tags = {
    Name  = "prod-AlloLocationProviderProgect-subnet-public1-ap-northeast-1a"
    group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProviderProgect-subnet-public1-ap-northeast-1a"
    group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}

resource "aws_subnet" "AlloLocationProviderPublicSubnet2" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.0.128/25"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "ap-northeast-1c"

  tags = {
    Name  = "prod-AlloLocationProviderProgect-subnet-public2-ap-northeast-1c"
    group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProviderProgect-subnet-public2-ap-northeast-1c"
    group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}

resource "aws_subnet" "AlloLocationProviderPrivateSubnet1" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.1.0/25"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "ap-northeast-1a"

  tags = {
    Name  = "prod-AlloLocationProviderProgect-subnet-private1-ap-northeast-1a"
    group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProviderProgect-subnet-private1-ap-northeast-1a"
    group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}

resource "aws_subnet" "AlloLocationProviderPrivateSubnet2" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.1.128/25"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  availability_zone                              = "ap-northeast-1c"

  tags = {
    Name  = "prod-AlloLocationProviderProgect-subnet-private2-ap-northeast-1c"
    group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProviderProgect-subnet-private2-ap-northeast-1c"
    group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}
