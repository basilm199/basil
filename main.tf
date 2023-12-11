resource "aws_key_pair" "basil-key2" {
  key_name   = "${var.project_name}-${var.project_env}"
  public_key = file("basil.pub")
  tags = {
    Name = "${var.project_name}-${var.project_env}-2"
  }
}

resource "aws_instance" "RacingClub-Application" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ssh2-http-https.id]
  user_data              = file("setup.sh")
  key_name               = aws_key_pair.basil-key2.key_name
  tags = {
    Name = "${var.project_name}-${var.project_env}-RacingClub-Application"
  }
}
