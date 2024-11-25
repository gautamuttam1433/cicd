variable "aws_region" {
  description = "The AWS region to deploy resources"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  default     = "ami-0866a3c8686eaeeba" # Replace with your AMI ID
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  default     = "t2.micro"
}

variable "min_size" {
  description = "Minimum size of the Auto Scaling group"
  default     = 2
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling group"
  default     = 5
}

variable "desired_capacity" {
  description = "Desired capacity of the Auto Scaling group"
  default     = 2
}

variable "availability_zones" {
  description = "Availability zones for the Auto Scaling group"
  default     = ["us-east-1e", "us-east-1a"]
}
