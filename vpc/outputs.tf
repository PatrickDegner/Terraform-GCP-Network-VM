output "vpc_name" {
  value = google_compute_network.vpc_network.name
}

output "vpc_subnet_name" {
  value = google_compute_subnetwork.vpc_subnet.name
}