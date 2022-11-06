# Create EC2 Instance
resource "aws_instance" "web" {
  # ami               = "ami-0915bcb5fa77e4892" # Amazon Linux
  ami           = data.aws_ami.amzlinux.id
  instance_type = "t2.micro"
  # availability_zone = "us-west-2a"
  availability_zone = "us-west-2b"
  tags = {
    "Name" = "web-1"
  }
  lifecycle {
    create_before_destroy = true
  }
}
