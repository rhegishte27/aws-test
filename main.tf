provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
  access_key = "AKIAYIJETJ6IFXUFIFJU"
  secret_key = "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"  
}

resource "aws_cloudwatch_log_group" "common-loggroup" {
  name = "common_loggroup-rupesh"

  tags = {
    Environment = "production"
    Application = "serviceA"
  }
}
