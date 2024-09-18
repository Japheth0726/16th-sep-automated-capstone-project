provider "aws" {
    region = "us-east-1"
    profile = "default"
}

# Creating vpc
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "capstone-project"
  }
}

# creating public subnet1
resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "Public_subnet-1"
  }
}

# creating public subnet 2
resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "Public_subnet-2"
  }
}

# creating private subnet1
resource "aws_subnet" "subnet3" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.3.0/24"
  tags = {
    Name = "Private_subnet-1"
  }
}

# creating private subnet 2
resource "aws_subnet" "subnet4" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.4.0/24"
  tags = {
    Name = "Private_subnet-2"
  }
}

# creating igw
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "capstone-igw"
  }
}