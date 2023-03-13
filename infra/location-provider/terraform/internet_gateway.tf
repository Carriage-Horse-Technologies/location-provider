resource "aws_internet_gateway" "AlloLocationProviderIGW" {
  tags = {
    Name  = "prod-AlloLocationProviderProgect-igw"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProviderProgect-igw"
    Group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}
