
module "vpc" {
  source         = "./vpc"
  project_id     = "dwh-dev-381113"
  region         = var.region
  vpc_name       = var.network
  subnet_cidr    = "10.0.0.0/24"
}

module "firewall_rules" {
  source         = "./firewall_rules"
  network        = var.network
  depends_on     = [module.vpc]
}

module "vm1" {
  source         = "./vm"
  vm_name        = "vm-patrick1"
  machine_type   = "e2-micro"
  zone           = "europe-west3-c"
  image          = "ubuntu-2204-jammy-v20230302"
  desired_status = "RUNNING"

  ssh_keys       = var.ssh_keys
  network        = var.network
  subnetwork     = var.subnetwork
  tags           = [
                    "${var.network}-allow-icmp-ingress", 
                    "${var.network}-allow-ssh-ingress",
                    "${var.network}-deny-all-egress"
                   ]
  labels         = {
                    "env"       = "dev"
                    "location"  = "eu-west"
                    "state"     = "active"
                   } 
  depends_on     = [module.vpc]
}