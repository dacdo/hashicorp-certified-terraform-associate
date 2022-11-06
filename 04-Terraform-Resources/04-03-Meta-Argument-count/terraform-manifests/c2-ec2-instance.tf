# Create EC2 Instance
resource "aws_instance" "web" {
  # ami           = "ami-083ac7c7ecf9bb9b0" # Amazon Linux
  ami           = data.aws_ami.amzlinux.id
  instance_type = "t2.micro"
  count         = 3
  tags = {
    # "Name" = "web"
    "Name" = "web-${count.index}"
  }
}
