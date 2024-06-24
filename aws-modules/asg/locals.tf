locals {
  network_interfaces = [
    for idx, subnet_id in slice(data.aws_subnets.private_subnets.ids,0,0): {
      associate_public_ip_address = false
      delete_on_termination       = true
      device_index                = idx
      subnet_id                   = subnet_id
      security_groups             = [var.asg_sg]
    }
  ]
}