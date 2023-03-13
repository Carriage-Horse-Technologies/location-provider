resource "aws_ecs_cluster" "AlloLocationProviderECSCluster" {
  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }

  name = "allo-location-provider-cluster"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }

  tags = {
    "ecs:cluster:createdFrom" = "ecs-console-v2"
    Name                      = "AlloLocationProvider-ecs-cluster"
    Group                     = "AlloLocationProvider"
  }

  tags_all = {
    "ecs:cluster:createdFrom" = "ecs-console-v2"
    Name                      = "AlloLocationProvider-ecs-cluster"
    Group                     = "AlloLocationProvider"
  }
}
