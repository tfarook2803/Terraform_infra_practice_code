
resource "aws_instance" "infra_project" {
  ami           = data.aws_ami.my-infra-linux-ami.id
  instance_type = var.instance_type
  user_data = file("${path.module}/userdata.sh")
  key_name = var.key_pair
  security_groups = [aws_security_group.my-infra-sg.name]
  tags = {

        Name = "demo-ec2-instance-${var.env}"
  }

 
}