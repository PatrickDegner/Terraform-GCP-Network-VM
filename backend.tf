terraform {
  backend "gcs" {
    bucket = "terraform-state-bucket-patrick"
    prefix = "terraform/state"
  }
}