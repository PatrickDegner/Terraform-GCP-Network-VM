project_id = "dwh-dev-381113"
region     = "europe-west3"

network = "patrick-vpc"

subnetwork  = "patrick-vpc-subnet"
subnet_cidr = "10.0.0.0/24"

ssh_keys = [{
  name       = "Patrick"
  public_key = "ssh-ed25519 123456"
  },
  {
    name       = "Patrick2"
    public_key = "ssh-ed25519 234561"
}]