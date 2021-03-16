data "archive_file" "lambdazip" {
  type        = "zip"
  source_file = "lambda.py"
  output_path = "lambda.zip"
}

resource "aws_lambda_function" "test_lambda" {
  filename      = "lambda.zip"
  function_name = "lambda"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda.lambda_handler"

#  source_code_hash = filebase64sha256("lambda_function_payload.zip")

  runtime = "python3.8"
}

