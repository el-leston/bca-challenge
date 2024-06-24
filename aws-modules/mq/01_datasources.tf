data "aws_security_groups" "this" {
  filter {
    name   = "group-name"
    values = ["default"]
  }
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}
data "aws_subnets" "private_subnets" {
    
  filter {
    name   = "tag:Name"
    values = ["private-*"] 
  }
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}