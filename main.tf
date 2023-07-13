variable  "region" {}
variable  "access_key" {}
variable  "secret_key" {}
variable "Name" {}

provider "aws" {
  region     = "ap-south-1"
  access_key = var.my-access-key
  secret_key = var.my-secret-key
}
resource "aws_instance" "example_instance" {
  ami           = var.my-ami
  instance_type = "t2.micro"

  tags = {
    Name = "My machine"
  }
}
variable "instance_count" {
  description = "Number of instances to create"
  default     = 1  # Change this value as needed
}
}
