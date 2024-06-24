##GLOBAL VARIABLE#
variable "region" {
  type        = string
  default     = "eu-central-1"
  description = "region to deploy the subnets"
}

variable vpc_id {
  type        = string
  description = "vpc id"
}


variable "asg_name" {
  type        = string
  default     = "el-autoscaling-group"
  description = "the name of the autoscaling group"
}

variable "asg_sg" {
  type        = string
  description = "asg security group"
}

variable arn_instance_profile {
  type        = string
  description = "arn instance profile for the ec2 instances"
}
