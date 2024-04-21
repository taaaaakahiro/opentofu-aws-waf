terraform {
  required_version = ">= 1.6.0"
  backend "s3" {
    bucket = "opentofu-aws-waf-example"
    key    = "opentofu-aws-waf-example.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = local.region
}