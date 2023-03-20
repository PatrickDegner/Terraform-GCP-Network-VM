variable "project_id" {
  type        = string
  description = "The GCP project ID where the VPC will be created."
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC to be created."
}

variable "subnet_cidr" {
  type        = string
  description = "The CIDR block for the subnet to be created in the VPC."
}

variable "region" {
  type        = string
  description = "The Region for the VPC"
}

