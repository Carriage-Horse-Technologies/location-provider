resource "aws_lb" "AlloLocationProviderALB" {
  desync_mitigation_mode     = "defensive"
  drop_invalid_header_fields = "false"
  enable_deletion_protection = "false"
  enable_http2               = "true"
  enable_waf_fail_open       = "false"
  idle_timeout               = "60"
  internal                   = "false"
  ip_address_type            = "ipv4"
  load_balancer_type         = "application"
  name                       = "prod-AlloLocationProviderALB"
  preserve_host_header       = "false"
  security_groups            = [aws_security_group.AlloLocationProviderALBSecurityGroup.id]

  subnet_mapping {
    subnet_id = aws_subnet.AlloLocationProviderPublicSubnet1.id
  }

  subnet_mapping {
    subnet_id = aws_subnet.AlloLocationProviderPublicSubnet2.id
  }

  tags = {
    Name  = "prod-AlloLocationProvider-backend-ecs-alb"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProvider-backend-ecs-alb"
    Group = "AlloLocationProvider"
  }
}
