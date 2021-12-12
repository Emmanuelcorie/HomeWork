provider "aws" {
    region = "us-east-1"
  
}
terraform {
  backend "s3" {
    bucket = "emmanuel2bucket"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "koriedb"
  }
}