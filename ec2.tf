resource "aws_instance" "ec2-one" {
  ami = "ami-01bc990364452ab3e"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  instance_type = "t2.micro"
  key_name = "ec2-demo"
  subnet_id = aws_subnet.private_subnet1.id
  user_data = file("userdata.sh")
  tags = {
    Name = "webserver-1"
  }
  
}

resource "aws_instance" "ec2-two" {
   ami = "ami-01bc990364452ab3e"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  instance_type = "t2.micro"
  key_name = "ec2-demo"
  subnet_id = aws_subnet.private_subnet2.id
  user_data = file("userdata.sh")
  tags = {
    Name = "webserver-2"
  }
}
