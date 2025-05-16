resource "aws_instance" "webserver" {
  ami           = "ami-0a94c8e4ca2674d5a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  subnet_id = aws_subnet.subnet1.id
  user_data = base64encode(file("userdata.sh"))
}

resource "aws_instance" "webserver2" {
  ami           = "ami-0a94c8e4ca2674d5a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  subnet_id = aws_subnet.subnet2.id
  user_data = base64encode(file("userdata2.sh"))
}