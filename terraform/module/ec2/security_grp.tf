resource "aws_security_group" "demo_nosto_sg" {
  name = "allow_app_ports"
  description = "Allow 22 and 5000 inbound traffic"

  ingress {
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 5000
    protocol  = "tcp"
    to_port   = 5000
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "nosto_sg" {
  value = "${aws_security_group.demo_nosto_sg.name}"
}
