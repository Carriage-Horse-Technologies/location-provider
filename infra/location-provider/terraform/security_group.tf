resource "aws_security_group" "AlloLocationProviderALBSecurityGroup" {
  description = "prod-AlloLocationProviderALBSG"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "prod-AlloLocationProviderALBSecurityGroup"

  tags = {
    Name  = "prod-AlloLocationProvider-alb-security-group"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProvider-alb-security-group"
    Group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}

resource "aws_security_group" "AlloLocationProviderPostgresSecurityGroup" {
  description = "Created by RDS management console"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = [
      aws_subnet.AlloLocationProviderPublicSubnet1.cidr_block,
      aws_subnet.AlloLocationProviderPublicSubnet2.cidr_block
    ]
    from_port = "5432"
    protocol  = "tcp"
    self      = "false"
    to_port   = "5432"
  }

  name = "prod-AlloLocationProviderPostgresSecurityGroup"

  tags = {
    Name  = "prod-AlloLocationProvider-postgres-security-group"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProvider-postgres-security-group"
    Group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}

resource "aws_security_group" "AlloLocationProviderECSTaskSecurityGroup" {
  description = "prod-AlloLocationProviderECSTaskSecurityGroup"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8000"
  }

  name = "prod-AlloLocationProviderECSTaskSecurityGroup"

  tags = {
    Name  = "prod-AlloLocationProvider-ecs-task-security-group"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "prod-AlloLocationProvider-ecs-task-security-group"
    Group = "AlloLocationProvider"
  }

  vpc_id = aws_vpc.AlloLocationProviderVPC.id
}
