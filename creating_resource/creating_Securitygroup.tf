resource "aws_security_group" "SG" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  # ingress {
  #     from_port        = 0
  #     to_port          = 0
  #     protocol         = "-1"
  #     cidr_blocks      = ["0.0.0.0/0"]
  #     ipv6_cidr_blocks = ["::/0"]

  #   }

  dynamic "ingress" {

    for_each = [22, 443, 3306, 27017]
    iterator = port
    content {
      from_port = port.value
      to_port   = port.value
      protocol  = "TCP"

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