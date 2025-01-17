# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 Instance Type - Instance Sizing"
  type        = string
  default     = "t2.micro"
  # default = "t2.small"
}
