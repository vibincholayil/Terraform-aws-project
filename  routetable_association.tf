resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id =  aws_route_table.rt.id
}

resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id =  aws_route_table.rt.id
}