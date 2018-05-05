variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "stu-tf-templates"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
