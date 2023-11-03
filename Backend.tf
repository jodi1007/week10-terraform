terraform {
  backend "s3" {
    bucket         = "m-s3b7"
    key            = "week10/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "TerraformLock"
  }
}