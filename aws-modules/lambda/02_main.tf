resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda_exec_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "lambda_policy" {
  role = aws_iam_role.lambda_exec_role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "logs:*",
        "mq:SendMessage",
        "mq:ReceiveMessage"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_lambda_function" "write_lambda" {
  filename         = "${abspath(path.module)}/write_lambda.zip"
  function_name    = "write_lambda"
  role             = aws_iam_role.lambda_exec_role.arn
  handler          = "producer.handler"
  runtime          = "python3.8"


  environment {
    variables = {
      MQ_URL = try(var.broker_url,"") #aws_mq_broker.example.primary_endpoint
    }
  }
  tags = {
    Name = "bca-lambda-write"
    Environment = "dev" 
  }
}

resource "aws_lambda_function" "read_lambda" {
  filename         = "${abspath(path.module)}/read_lambda.zip"
  function_name    = "read_lambda"
  role             = aws_iam_role.lambda_exec_role.arn
  handler          = "subscriber.handler"
  runtime          = "python3.8"

  environment {
    variables = {
      MQ_URL = try(var.broker_url,"")
    }
  }

  tags = {
    Name = "bca-lambda-read"
    Environment = "dev" 
  }
}
