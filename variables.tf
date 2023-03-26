variable "network" {
  type        = string
  description = "The Name of the VPC Network"
}

variable "subnetwork" {
  type        = string
  description = "The Name of the VPC Subnet Network"
}

variable "region" {
  type        = string
  description = "GCP Region"
}

variable "subnet_cidr" {
  type        = string
  description = "VPC subnet CIDR"
}

variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "ssh_keys" {
  type = list(object({
    name       = string
    public_key = string
  }))
}