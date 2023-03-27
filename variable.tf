
#########################################################
# PROVIDER VARIABLE
#########################################################

variable "region" {
  description = "passing the region"
  type        = string
  default     = "us-east-1"
}

variable "component" {
  description = "passing the component"
  type        = string
}

# Make sure to remove this if you are using default 
# variable "profile" {
#   description = "passing the profile"
#   type        = string
#   default     = "iamadmin"
# }

variable "env" {
  type        = string
  description = "passing the environment tag"
}

#########################################################
# VARIABLE FOR VPC & SUBNET
#########################################################
variable "vpc_cidr" {
  description = "passing the cidr block for the vpc"
  type        = string
}

variable "frontend_subnet_cidr" {
  description = "passing the cidr for the public subnet"
  type        = list(any)

}

variable "backend_subnet_cidr" {
  description = "passing the cidr for the backend subnet"
  type        = list(any)

}

variable "database_subnet_cidr" {
  description = "passing the cidr for the database subnet"
  type        = list(any)

}


