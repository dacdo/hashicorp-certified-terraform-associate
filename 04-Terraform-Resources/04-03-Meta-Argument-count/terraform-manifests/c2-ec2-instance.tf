# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-083ac7c7ecf9bb9b0" # Amazon Linux
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "web"
    #"Name" = "web-${count.index}"
  }
}
