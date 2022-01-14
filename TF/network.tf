resource "aws_security_group" "sshdport" {
   name = "sshdport-vm"

   ingress {
     from_port    = 22
     to_port      = 22
     protocol     = "tcp"
     cidr_blocks  = ["0.0.0.0/0"]
   }
}
