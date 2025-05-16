resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_1
  availability_zone = var.availability_zone_london
  map_public_ip_on_launch = true
}


resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.subnet_2
  availability_zone = var.availability_zone_london2
  map_public_ip_on_launch = true
}