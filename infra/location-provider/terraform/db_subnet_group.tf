resource "aws_db_subnet_group" "AlloLocationProviderDBSubnetGroup" {
  description = "Created from the RDS Management Console"
  name        = aws_vpc.AlloLocationProviderVPC.id
  subnet_ids  = [aws_subnet.AlloLocationProviderPublicSubnet1.id, aws_subnet.AlloLocationProviderPublicSubnet2.id, aws_subnet.AlloLocationProviderPrivateSubnet1.id, aws_subnet.AlloLocationProviderPrivateSubnet2.id]
  tags = {
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Group = "AlloLocationProvider"
  }
}
