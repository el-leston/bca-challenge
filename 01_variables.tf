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

variable tags {
  type        = map(string)
  description = "description"
}

#### ASG ####
variable "asg_name" {
  type        = string
  description = "the name of the autoscaling group"
}

#### S3 ####
variable bucket_name {
  type        = string
  description = "Name of the bucket"
}

variable log_bucket_name {
  type        = string
  description = "Name of the log bucket"
}


/* #### API GATEWAY ####

 variable "wlambda_name" {
   type        = string
   description = "write lambda name"
 }

  variable "rlambda_name" {
   type        = string
   description = "read lambda name"
 }

  variable "wlambda_invoke_arn" {
   type        = string
   description = "write invoke arn"
 }
  variable "rlambda_invoke_arn" {
   type        = string
   description = "read invoke arn"
 } */