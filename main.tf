provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
}

resource "aws_cloudwatch_log_group" "common-loggroup" {
  name = "common_loggroup-rupesh"

  tags = {
    Environment = "production"
    Application = "serviceA"
  }
}
