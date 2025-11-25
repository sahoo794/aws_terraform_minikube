terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "1.14.0."
    }
  }

  backend "s3" {
    bucket   = "roboshop-remote-state9"
    key = "minikube"
    region = "us-east-2"
    dynamodb_table = "roboshop-locking"
  }
}

provider "aws" {
  # Configuration options
  # you can give access key and secret key here, but security problem
  region = "us-east-2"
}