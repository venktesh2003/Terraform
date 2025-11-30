provider "aws" {
  region     = "us-east-1"
  access_key = "${var.access}"
  secret_key = "${var.secret}"
}

variable access{
    type = string

}

variable "secret" {
    type = string
  
}