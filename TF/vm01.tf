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
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCn8O9jM7Xb3YYdaUydP8isDcPtcWXS23yWCAqUjanGEFSwaqLD4VGs7tlh7s7q+Ogl0+1spfQs79VNyzL4+1qUznb6yQkaCcQYt4lXnYBWYDWtabHkxiO7XvhC0pZzLCEIw6DYKkH016Fyf4RFjMoo4X17PhKjLAwaAvmrHf/5bxaI2h5skt7vKVFLxyRI/qrV1zEm/EL8A3kWTqCP6Po6pGDDp7PXlEiQWV2HnJQ60hk67xfxiMhfBbCzLZIt9CDB9Ytkdt0VZTEuiDrnhcAB6PLcjSqa6kzbSwpIdb9Kd6hTkoq5HwB9mvWU9dKva2Sr4tkbZSCxMdwxibqgR7l3 vm-usa-01"
}
