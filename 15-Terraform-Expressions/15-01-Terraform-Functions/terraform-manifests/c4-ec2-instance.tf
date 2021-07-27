# Create EC2 Instance - Amazon2 Linux
resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.instance_type
  key_name      = "terraform-key"
  #user_data = file("apache-install.sh") 
  # vars must be a map 
  user_data = templatefile("user_data.tmpl", { package_name = var.package_name, port = 8080, ip_addrs = ["10.0.0.1", "10.0.0.2"], config = {
    "x"   = "y"
    "foo" = "bar"
    "key" = "value"
  } })
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "TF-Functions-Demo-1"
  }
}














