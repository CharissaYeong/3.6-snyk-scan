module "lambda_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "~> 8.0"

  function_name = "${var.name_prefix}-lambda"
  description   = "A Lambda function that prints Hello, World!"
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.11"

  source_path = "${path.module}/files"

  cloudwatch_logs_retention_in_days = 7

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}