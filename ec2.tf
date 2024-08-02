provider "aws" {
   region = "eu-west-2"
}
resource "aws_instance" "project-instance" {
   ami = "ami-07d20571c32ba6cdc"
   instance_type = "t2.micro"
}
