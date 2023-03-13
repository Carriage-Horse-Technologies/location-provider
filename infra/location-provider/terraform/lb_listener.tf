resource "aws_lb_listener" "AlloLocationProviderBackendECSIbListernerHttp" {
  default_action {
    target_group_arn = aws_lb_target_group.AlloLocationProviderTG.arn
    type             = "forward"
  }

  load_balancer_arn = aws_lb.AlloLocationProviderALB.arn
  port              = "80"
  protocol          = "HTTP"

  tags = {
    Name  = "prod-AlloLocationProvider-backend-ecs-lb-listerner-http"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProvider-backend-ecs-lb-listerner-http"
    Group = "AlloLocationProvider"
  }
}

resource "aws_lb_listener" "AlloLocationProviderBackendECSIbListernerHttps" {
  certificate_arn = var.CERTIFICATE_ARN

  default_action {
    target_group_arn = aws_lb_target_group.AlloLocationProviderTG.arn
    type             = "forward"
  }

  load_balancer_arn = aws_lb.AlloLocationProviderALB.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"

  tags = {
    Name  = "prod-AlloLocationProvider-backend-ecs-lb-listerner-https"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProvider-backend-ecs-lb-listerner-https"
    Group = "AlloLocationProvider"
  }
}
