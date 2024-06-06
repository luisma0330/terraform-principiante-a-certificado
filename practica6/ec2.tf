resource "aws_instance" "public_instance" {
  ami           = "ami-0d191299f2822b1fa"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = data.aws_key_pair.key.key_name
}