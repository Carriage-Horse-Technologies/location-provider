resource "aws_ecr_repository" "AlloLocationProviderRepository" {
  encryption_configuration {
    encryption_type = "KMS"
  }

  image_scanning_configuration {
    scan_on_push = "true"
  }

  image_tag_mutability = "MUTABLE"
  name                 = "allo-location-provider"

  tags = {
    Name  = "allo-location-provider-repository"
    Group = "AlloLocationProvider"
  }

  tags_all = {
    Name  = "allo-location-provider-repository"
    Group = "AlloLocationProvider"
  }
}
