resource "aws_mq_broker" "this" {
  broker_name         = "thebroker"
  engine_type         = "ActiveMQ"
  engine_version      = "5.17.6"
  host_instance_type     = "mq.t3.micro"
  security_groups       = [var.mq_sg]

  user {
    username = "admin"
    password = "best1Password2InTheWhole3World"
  }

  subnet_ids = var.private_subnets

  publicly_accessible = false

  tags = {
    Name = "bca-mq"
    Environment = "dev" 
  }
}
