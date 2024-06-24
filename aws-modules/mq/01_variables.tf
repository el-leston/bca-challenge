variable "mq_sg" {
  type        = string
  description = "description"
}

variable "private_subnets" {
  type = list(string)
  description = "list of subnet ids for mq broker "
}