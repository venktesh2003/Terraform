resource "aws_instance" "myinstance-tf" {
  ami             = "ami-0ecb62995f68bb549"
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.sshkey.key_name
 vpc_security_group_ids = [aws_security_group.SG.id]

  tags = {
    Name = "automatedVM"
  }
}