provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "aramyd-tf-state-bucket"
    key    = "terraform-state/dev-terraform.tfstate"
    region = "eu-west-2"
  }
}


resource "aws_s3_bucket" "My-terraform-state-bucket" {
  bucket = "aramyd-tf-state-bucket"
}

resource "aws_instance" "project-instance" {
  ami           = "ami-07d20571c32ba6cdc"
  instance_type = "t2.micro"
  tags = {
    Name = "dev-webserver-testing-jenkins"
  }
}


