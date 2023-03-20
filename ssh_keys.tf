variable "ssh_keys" {
  type = list(object({
    name       = string
    public_key = string
  }))

  default = [
    {
      name       = "Patrick"
      public_key = "ssh-ed25519 123456"
    },
    {
      name       = "Patrick2"
      public_key = "ssh-ed25519 234561"
    }
  ]
}