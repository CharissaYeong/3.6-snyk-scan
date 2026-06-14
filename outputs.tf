output "lambda_function_arn" {
  description = "Lambda function ARN"
  value       = module.lambda_function.lambda_function_arn
}

output "lambda_function_name" {
  description = "Lambda Function name"
  value       = module.lambda_function.lambda_function_name
}