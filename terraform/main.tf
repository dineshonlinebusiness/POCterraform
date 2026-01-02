provider "aws" {
  region = "ap-south-1"
}

# S3 Bucket
resource "aws_s3_bucket" "website_bucket" {
  bucket = "hello-world-terraform-bucket-poc"
  force_destroy = true
}

# EC2 Instance
resource "aws_instance" "example" {
  ami           = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorldEC2"
  }
}
