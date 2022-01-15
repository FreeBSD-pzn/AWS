# To login to the virtual mashine need to generate public and private key
# use ssh-keygen to do it.
# Public key place to the terraform.tfvars
# with the form:
# sshd-public-key="your public key which has been generated ssh-keygen"
#
resource "aws_instance" "vm-usa-01" {
  ami            = "ami-0fb653ca2d3203ac1"
  instance_type  = "t3.micro"

  key_name = aws_key_pair.ssh-vm-usa-01.id

  vpc_security_group_ids = [aws_security_group.sshdport.id]

  tags = {
    Name = "vm-usa-01"
  }
}

resource "aws_key_pair" "ssh-vm-usa-01" {
  key_name = "admin"
  public_key = var.sshd-public-key 
}
