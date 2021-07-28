# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-083ac7c7ecf9bb9b0" # Amazon Linux
  instance_type = "t2.micro"
  # instance_type = "t2.small"
  tags = {
    "Name" = "web-9"
  }

  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags, instance_type
    ]
  }
}
