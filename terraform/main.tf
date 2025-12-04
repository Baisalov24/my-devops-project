terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_ecr_repository" "mini_repo" {
  name                 = "mini-devops-repo"
  image_tag_mutability = "MUTABLE"
}

output "repository_url" {
  value = aws_ecr_repository.mini_repo.repository_url
}
