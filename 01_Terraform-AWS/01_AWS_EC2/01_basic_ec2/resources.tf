resource "aws_instance" "ec2" {
  ami = var.ami_id
  instance_type = var.instance_type

  security_groups = [ "my_sg" ]

  tags = {
    Name = "my_ec2"
  }
}

resource "aws_security_group" "sg" {
  name = "my_sg"
  description = "allow ssh access"
  vpc_id = var.vpc_id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}