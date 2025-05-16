variable "cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}


variable "subnet_1" {
  description = "The CIDR block for the subnet."
  default     = "10.0.0.0/24"
}

variable "subnet_2" {
  description = "The CIDR block for the subnet."
  default     = "10.0.1.0/24"
}

variable "availability_zone_london" {
  description = "The availability zone for the subnet."
  default     = "eu-west-2a"
}

variable "availability_zone_london2" {
  description = "The availability zone for the subnet."
  default     = "eu-west-2b"
}






