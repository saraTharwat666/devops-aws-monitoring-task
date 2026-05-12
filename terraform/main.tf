resource "aws_instance" "main" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu 22.04 us-east-1
  instance_type = var.instance_type

 key_name = aws_key_pair.devops_key.key_name

  user_data = ""

  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  tags = {
    Name = "devops-server"
  }
}