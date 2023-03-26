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

variable "subnet_cidr" {
  type = string
  default = "10.0.0.0/24"
  description = "VPC subnet CIDR"
}

variable "project_id" {
  type = string
  default = "dwh-dev-381113"
  description = "GCP Project ID"
}