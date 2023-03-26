variable "vm_name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "zone" {
  type = string
}

variable "image" {
  type = string
}

variable "network" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "tags" {
  type        = list(string)
  description = "List of tags to be applied to the VM."
}

variable "labels" {
  type        = map(string)
  description = "Labels, provided as a map"
  default     = {}
}

variable "ssh_keys" {
  type = list(object({
    name       = string
    public_key = string
  }))
  default = []
}
