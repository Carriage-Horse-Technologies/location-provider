resource "aws_ecs_cluster_capacity_providers" "AlloLocationProviderECSCapacityProider" {
  cluster_name = aws_ecs_cluster.AlloLocationProviderECSCluster.name

  capacity_providers = ["FARGATE", "FARGATE_SPOT"]
}
