output "asg_name" {
  value       = aws_autoscaling_group.this.name
  description = "Name of the autoscaling group"
}
