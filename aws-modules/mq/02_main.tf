resource "aws_mq_broker" "example" {
  broker_name       = "example"
  broker_engine     = "ActiveMQ"
  broker_engine_version = "5.15.14"
  instance_type     = "mq.t3.micro"
  security_groups   = [aws_security_group.mq.id]

  user {
    username = "admin"
    password = "YourPassword123"
  }

  subnet_ids = [
    aws_subnet.public.id,
    aws_subnet.private.id,
  ]

  publicly_accessible = true
}
