# AWS EC2 Instance Module
module "ec2_cluster" {
  source = "terraform-aws-modules/ec2-instance/aws"
  # version = "~> 2.0"
  version = "2.21.0"

  name           = "my-modules-demo"
  instance_count = 2
  count          = 1

  ami                    = data.aws_ami.amzlinux.id
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-0dc7ba9db7e970563"]   # Get chef sg id
  subnet_id              = "subnet-0a9bf9520ede3f0f9" # Get one public subnet id from default vpc and replace
  user_data              = file("apache-install.sh")
  tags = {
    Name        = "Modules-Demo"
    Terraform   = "true"
    Environment = "dev"
  }
}

