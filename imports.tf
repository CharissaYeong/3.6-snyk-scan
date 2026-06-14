import {
  to = module.lambda_function.aws_lambda_function.this[0]
  id = "${var.name_prefix}-lambda"
}

import {
  to = module.lambda_function.aws_iam_role.lambda[0]
  id = "${var.name_prefix}-lambda"
}

import {
  to = module.lambda_function.aws_cloudwatch_log_group.lambda[0]
  id = "/aws/lambda/charissa-lambda"
}