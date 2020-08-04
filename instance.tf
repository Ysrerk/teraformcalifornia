provider "aws" {
  profile = "default"
  region  = "us-west-1"
  version = "~> 2.70"
}
resource "aws_instance" "terraexample" {
  ami           = var.ami_name 
  instance_type = "t2.micro"
  key_name = var.key_name
  subnet_id = "aws_subnet.public_subnet.id"


  tags={
    Name ="web_server"
  }
 

}