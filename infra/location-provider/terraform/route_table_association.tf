resource "aws_route_table_association" "AlloLocationProviderPublicSubnet1" {
  route_table_id = aws_route_table.AlloLocationProviderPublicRouteTable.id
  subnet_id      = aws_subnet.AlloLocationProviderPublicSubnet1.id
}

resource "aws_route_table_association" "AlloLocationProviderPublicSubnet2" {
  route_table_id = aws_route_table.AlloLocationProviderPublicRouteTable.id
  subnet_id      = aws_subnet.AlloLocationProviderPublicSubnet2.id
}

resource "aws_route_table_association" "AlloLocationProviderPrivateSubnet1" {
  route_table_id = aws_route_table.AlloLocationProviderPrivateRouteTable.id
  subnet_id      = aws_subnet.AlloLocationProviderPrivateSubnet1.id
}

resource "aws_route_table_association" "AlloLocationProviderPrivateSubnet2" {
  route_table_id = aws_route_table.AlloLocationProviderPrivateRouteTable.id
  subnet_id      = aws_subnet.AlloLocationProviderPrivateSubnet2.id
}
