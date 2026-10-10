variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "project_name" {
  type    = string
  default = "ha-web-demo"
}

variable "instance_type" {
  description = "Choose an instance type eligible for your account and region"
  type        = string
  default     = "t3.micro"
}
