resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_subnet
  map_public_ip_on_launch =true

  tags = {
    Name = "public_subnet"
  }
}
/*resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr_block_subnet2
  map_public_ip_on_launch =true

  tags = {
    Name = "public_subnet2"
  }
}*/



