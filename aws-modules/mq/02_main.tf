resource "aws_mq_broker" "this" {
  broker_name       = "thebroker"
  engine_type     = "ActiveMQ"
  engine_version = "5.15.14"
  host_instance_type     = "mq.t3.micro"
  security_groups   = data.aws_security_groups.this.ids

  user {
    username = "admin"
    password = "best1Password2InTheWhole3World"
  }

  subnet_ids = data.aws_subnets.aws_subnets.ids

  publicly_accessible = false
}
