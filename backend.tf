terraform {
  backend "s3" {
    bucket         = "mktn-dev-us-east-1-tfstate"
    dynamodb_table = "terraform-locks-us-east-1"
    encrypt        = true
    key            = "rev-dev/terraform.tfstate"
    region         = "us-east-1"
  }
}
