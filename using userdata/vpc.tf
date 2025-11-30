resource "aws_security_group" "vpc_security_group" {
  # ... other configuratio

   dynamic "ingress" {
 for_each = [22 , 80 , 443]
    iterator = it
    content {
        from_port        = it.value
    to_port          = it.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
      

    }
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}