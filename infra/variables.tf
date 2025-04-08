variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # Free tier eligible
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0e35ddab05955cf57" # Ubuntu 20.04 LTS
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "allowed_ssh_ips" {
  description = "List of IP addresses allowed to SSH into the instance"
  type        = list(string)
  default     = ["0.0.0.0/0"] # WARNING: This is for testing only. Restrict in production.
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 8  # Free tier eligible (up to 30GB)
}

variable "root_volume_type" {
  description = "Type of the root volume"
  type        = string
  default     = "gp2"  # Free tier eligible
}
