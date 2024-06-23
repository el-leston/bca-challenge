variable "region" {
  type        = string
  default     = "eu-central-1"
  description = "region to deploy the subnetes"
}

variable "cidrs" {
  type = object({
    primary   = string
    secondary = optional(list(string))
  })
  description = "CIDRs of the VPC"
}
variable "subnets" {
  type = map(object({
    availability_zones = optional(list(string), ["a", "b", "c"])
    cidr_block         = string
    IsPrivate          = bool
    Isroutable         = bool
    subnetName         = optional(string, "")
  }))
}

variable "asg_name" {
  type        = string
  description = "the name of the autoscaling group"
}
