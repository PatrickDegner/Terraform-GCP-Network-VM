terraform {
  backend "gcs" {
    bucket = "terraform-state-bucket-patrick"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source      = "./vpc"
  project_id  = var.project_id
  region      = var.region
  vpc_name    = var.network
  subnet_cidr = var.subnet_cidr
}

module "firewall_rules" {
  source  = "./firewall_rules"
  network = module.vpc.vpc_name
}

module "vm1" {
  source       = "./vm"
  vm_name      = "vm-patrick1"
  machine_type = "e2-micro"
  zone         = "europe-west3-c"
  image        = "ubuntu-2204-jammy-v20230302"

  ssh_keys   = var.ssh_keys
  network    = module.vpc.vpc_name
  subnetwork = module.vpc.vpc_subnet_name
  tags = [
    "${module.vpc.vpc_name}-allow-icmp-ingress",
    "${module.vpc.vpc_name}-allow-ssh-ingress",
    "${module.vpc.vpc_name}-deny-all-egress"
  ]
  labels = {
    "env"      = "dev"
    "location" = "eu-west"
    "state"    = "active"
  }
}