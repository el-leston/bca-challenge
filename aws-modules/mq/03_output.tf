output mq_broker_url {
  value       = aws_mq_broker.this.instances.0.console_url
  description = "broker url" 
}
