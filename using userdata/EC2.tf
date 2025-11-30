resource "aws_instance" "myinstance" {
  ami           = "ami-0ecb62995f68bb549"
    instance_type = "t3.micro"
    key_name = aws_key_pair.mykey.key_name
    vpc_security_group_ids = [aws_security_group.vpc_security_group.id]
    user_data = file("${path.module}/config.sh")

  tags = {
    Name = "myinstance_name"
  }


}