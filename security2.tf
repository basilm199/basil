resource "aws_security_group" "open1" {
  name        = "${var.project_name}-${var.project_env}-open1"
  description = "${var.project_name}-${var.project_env}-open1"
  ingress {
    description = "Direct1"
    from_port   = 2223
    to_port     = 2223
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.project_name}-${var.project_env}-open1"
  }
}
