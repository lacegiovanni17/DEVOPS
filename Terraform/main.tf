# Configure the AWS Provider
provider "aws" {
  region  = "us-west-1"
}


resource "aws_instance" "web" {
  ami           = "ami-04f7a54071e74f488"
  instance_type = "t3.micro"
  key_name = "webserverkeypair"

  tags = {
    Name = "terraform_aws_server"
  }
}
