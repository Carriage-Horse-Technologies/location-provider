resource "aws_route_table" "AlloLocationProviderPublicRouteTable" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.AlloLocationProviderIGW.id
  }

  tags = {
    Name  = "prod-AlloLocationProviderProgect-rtb-public"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProviderProgect-rtb-public"
    Group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}

resource "aws_route_table" "AlloLocationProviderPrivateRouteTable" {
  tags = {
    Name  = "prod-AlloLocationProviderProgect-rtb-private"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProviderProgect-rtb-private"
    Group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}
