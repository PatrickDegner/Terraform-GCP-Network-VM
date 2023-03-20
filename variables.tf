variable "network" {
  type        = string
  default     = "patrick-vpc"
  description = "The Name of the VPC Network"
}

variable "subnetwork" {
  type        = string
  default     = "patrick-vpc-subnet"
  description = "The Name of the VPC Subnet Network"
}

variable "region" {
  type        = string
  default     = "europe-west3"
  description = "GCP Region"
}