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
  filename         = "write_lambda.zip.b64"
  function_name    = "write_lambda"
  role             = aws_iam_role.lambda_exec_role.arn
  handler          = "write_lambda.handler"
  runtime          = "python3.8"
  source_code_hash = "${base64sha256(file("/home/eleston/documents/git/bca-challenge/aws-modules/lambda/producer.py"))}"
  #source_code_hash  = "eu-central-1/dev/bca/zips/write_lambda.zip"
  #s3_bucket        = "dev-remote-backend-bucket"
  #s3_key           = "eu-central-1/dev/bca/zips/"

  /* environment {
    variables = {
      MQ_URL = var.broker_url #aws_mq_broker.example.primary_endpoint
    }
  } */
}

resource "aws_lambda_function" "read_lambda" {
  filename         = "read_lambda.zip.b64"
  function_name    = "read_lambda"
  role             = aws_iam_role.lambda_exec_role.arn
  handler          = "read_lambda.handler"
  runtime          = "python3.8"
  #source_code_hash = "eu-central-1/dev/bca/zips/read_lambda.zip" #base64sha256("/home/eleston/documents/git/bca-challenge/aws-modules/lambda/read_lambda.zip")
  source_code_hash = "${base64sha256(file("/home/eleston/documents/git/bca-challenge/aws-modules/lambda/subscriber.py"))}"
 /*  environment {
    variables = {
      MQ_URL = var.broker_url #aws_mq_broker.example.primary_endpoint
    }
  } */
}
