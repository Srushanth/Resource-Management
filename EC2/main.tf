terraform {
  backend "remote" {
    organization = "Sruyani"
    workspaces {
      name = "Resource-Management"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-north-1"
}

resource "aws_instance" "development_server_with_gpu" {
  ami           = "ami-0371a8d72d9549348"
  instance_type = "g5.xlarge"

  tags = {
    # "Name" = "Development_Server_Instance_With_GPUs"
    "Name" = var.instance_name
  }
}
