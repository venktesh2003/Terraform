resource "aws_key_pair" "mykey" {
  key_name   = "myssh-key"
  public_key = file("${path.module}/mysshkey.pub")
  
}