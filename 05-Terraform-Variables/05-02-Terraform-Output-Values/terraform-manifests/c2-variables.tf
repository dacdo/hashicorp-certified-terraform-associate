# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-west-2"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-083ac7c7ecf9bb9b0"
}

variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}
