terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  #shared_credentials_file = "%USERPROFILE%/.aws/credentials"
  #shared_credentials_file = "~/.aws/credentials"
  #access_key = "ASIARJRJNHEYPGWBOHHJ"
  #secret_key = "9QjdQN03Dka9tSihl5++K5/nVT7WvPT4PS3A/rkr"
}

resource "aws_instance" "RH_EC2Instance" {
  ami           = "ami-01fee56b22f308154"
  instance_type = "t2.micro"

  tags = {
    Name = "rh_aws_linux"
  }
}