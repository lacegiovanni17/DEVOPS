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

# creating an AWS VPC with Terraform
resource "aws_vpc" "myvpc" {
  cidr_block = var.ipAddress
}

resource "aws_subnet" "privateA" {
  vpc_id     = aws_vpc.privateA.id
  cidr_block = var.privateA-Ip
  availability_zone = "us-west-1"
  tags = {
    Name = "privateA"
  }
}


resource "aws_subnet" "publicA" {
  vpc_id     = aws_vpc.publicA.id
  cidr_block = var.publicA-Ip
  availability_zone = "us-west-1"

  tags = {
    Name = "publicA"
  }
}

# Create an Internet Gateway
resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.publicA.id
  tags = {
    Name = "myigw"
  }
}

# Create a Route Table
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.publicA.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route-table"
  }
}

# Associate the route table with the public subnet
resource "aws_route_table_association" "publicA" {
  subnet_id      = aws_subnet.publicA.id
  route_table_id = aws_route_table.publicA.id
}
