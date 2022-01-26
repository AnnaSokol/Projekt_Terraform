
#Singapore regions

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-1"
}

variable "aws_availability_zone" {
  description = "AWS availabitiy zone to launch servers."
  default     = "eu-west-1a"
}

variable "aws_instance_type" {
  description = "AWS Instance type"
  default     = "t2.micro"
}


variable "aws_public_key_name" {
  default = "projekt_htw_terraform"
}

variable "prometheus_access_name" {
 default = "projekt_htw_ec2_access"
}

# Ubuntu Server 16.04 LTS (HVM),EBS General Purpose (SSD) Volume Type
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-08ca3fed11864d6bb"
  }
}

variable "name" {
  description = "Infrastructure name"
  default = "Projekt_HTW"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  default = "11.0.0.0/16"
}

variable "prometheus_server_subnet_cidr1" {
  description = "Promethus Server Subnet CIDR"
  default = "11.0.1.0/24"
}

variable "env" {
  description = "Environment"
  default = "Prod"
}
