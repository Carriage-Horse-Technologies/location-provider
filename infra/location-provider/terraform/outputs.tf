# account id
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

# network
# vpc
output "aws_vpc_AlloLocationProviderVPC_id" {
  value = aws_vpc.AlloLocationProviderVPC.id
}

# subnet
output "aws_subnet_AlloLocationProviderPublicSubnet1_id" {
  value = aws_subnet.AlloLocationProviderPublicSubnet1.id
}

output "aws_subnet_AlloLocationProviderPrivateSubnet2_id" {
  value = aws_subnet.AlloLocationProviderPrivateSubnet2.id
}

output "aws_subnet_AlloLocationProviderPrivateSubnet1_id" {
  value = aws_subnet.AlloLocationProviderPrivateSubnet1.id
}

output "aws_subnet_AlloLocationProviderPublicSubnet2_id" {
  value = aws_subnet.AlloLocationProviderPublicSubnet2.id
}

output "aws_subnet_AlloLocationProviderPublicSubnet1_availability_zone" {
  value = aws_subnet.AlloLocationProviderPublicSubnet1.availability_zone
}

output "aws_subnet_AlloLocationProviderPrivateSubnet2_availability_zone" {
  value = aws_subnet.AlloLocationProviderPrivateSubnet2.availability_zone
}

output "aws_subnet_AlloLocationProviderPrivateSubnet1_availability_zone" {
  value = aws_subnet.AlloLocationProviderPrivateSubnet1.availability_zone
}

output "aws_subnet_AlloLocationProviderPublicSubnet2_availability_zone" {
  value = aws_subnet.AlloLocationProviderPublicSubnet2.availability_zone
}

# igw
output "aws_internet_gateway_AlloLocationProviderIGW_id" {
  value = aws_internet_gateway.AlloLocationProviderIGW.id
}

# route_table
output "aws_route_table_AlloLocationProviderPublicRouteTable_id" {
  value = aws_route_table.AlloLocationProviderPublicRouteTable.id
}

output "aws_route_table_AlloLocationProviderPrivateRouteTable_id" {
  value = aws_route_table.AlloLocationProviderPrivateRouteTable.id
}

output "aws_route_table_association_AlloLocationProviderPublicSubnet1_id" {
  value = aws_route_table_association.AlloLocationProviderPublicSubnet1.id
}

output "aws_route_table_association_AlloLocationProviderPublicSubnet2_id" {
  value = aws_route_table_association.AlloLocationProviderPublicSubnet2.id
}

output "aws_route_table_association_AlloLocationProviderPrivateSubnet1_id" {
  value = aws_route_table_association.AlloLocationProviderPrivateSubnet1.id
}

# sg
output "aws_security_group_AlloLocationProviderALBSecurityGroup_id" {
  value = aws_security_group.AlloLocationProviderALBSecurityGroup.id
}

output "aws_security_group_AlloLocationProviderPostgresSecurityGroup_id" {
  value = aws_security_group.AlloLocationProviderPostgresSecurityGroup.id
}

output "aws_security_group_AlloLocationProviderECSTaskSecurityGroup_id" {
  value = aws_security_group.AlloLocationProviderECSTaskSecurityGroup.id
}
output "aws_route_table_association_AlloLocationProviderPrivateSubnet2_id" {
  value = aws_route_table_association.AlloLocationProviderPrivateSubnet2.id
}

# db
# rds
# output "aws_db_instance_AlloLocationProviderPostgres_id" {
#   value = aws_db_instance.AlloLocationProviderPostgres.id
# }

output "aws_db_subnet_group_AlloLocationProviderDBSubnetGroup_id" {
  value = aws_db_subnet_group.AlloLocationProviderDBSubnetGroup.id
}

# backend
# ecr
output "aws_ecr_repository_AlloLocationProviderRepository_id" {
  value = aws_ecr_repository.AlloLocationProviderRepository.id
}


# ecs
output "aws_ecs_cluster_AlloLocationProviderECSCluster_id" {
  value = aws_ecs_cluster.AlloLocationProviderECSCluster.id
}

output "aws_ecs_cluster_AlloLocationProviderECSCluster_name" {
  value = aws_ecs_cluster.AlloLocationProviderECSCluster.name
}

# alb
output "aws_lb_listener_AlloLocationProviderBackendECSIbListernerHttp_id" {
  value = aws_lb_listener.AlloLocationProviderBackendECSIbListernerHttp.id
}

output "aws_lb_listener_AlloLocationProviderBackendECSIbListernerHttps_id" {
  value = aws_lb_listener.AlloLocationProviderBackendECSIbListernerHttps.id
}

output "aws_lb_target_group_AlloLocationProviderTG_id" {
  value = aws_lb_target_group.AlloLocationProviderTG.id
}

output "aws_lb_AlloLocationProviderALB_id" {
  value = aws_lb.AlloLocationProviderALB.id
}
