output "wlambda_invoke_arn" {
  value       = aws_lambda_function.write_lambda.invoke_arn
  description = "Write Invoke arn"
}

output "rlambda_invoke_arn" {
  value       = aws_lambda_function.read_lambda.invoke_arn
  description = "Read Invoke arn"
}

output "wlambda_name" {
  value       = aws_lambda_function.write_lambda.id
  description = "Write lambda name"
}

output "rlambda_name" {
  value       = aws_lambda_function.read_lambda.id
  description = "Read lambda name"
}