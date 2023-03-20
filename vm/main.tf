resource "google_compute_instance" "vm_instance" {
  provider    = google
  name        = var.vm_name
  machine_type = var.machine_type
  zone        = var.zone
  desired_status = var.desired_status

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
    subnetwork = var.subnetwork
    access_config {
    }
  }

  metadata = {
  ssh-keys = join("\n", [
    for key in var.ssh_keys :
    "${key.name}:${key.public_key}"
  ])
  }

  tags = var.tags
  labels = var.labels

}
