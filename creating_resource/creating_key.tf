resource "aws_key_pair" "sshkey" {
  key_name   = "venktesh-ssh"
  public_key = file("${path.module}/venktesh.pub")
}

# output "keyvalue" {
#        value = file("${path.module}/venktesh.pub")
# }