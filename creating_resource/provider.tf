terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.22.1"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASRPR5YBWM2ZKFWWB"
  secret_key = "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"
}

variable "secret" {
  type = string
}

variable "access" {
  type = string

}