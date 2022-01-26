variable "server_count" {
  type = number
  description = "Quantity of servers to have provisioned"
  default = 0
}

locals {
  server_names = {
    for i in range(var.server_count) : "${i}" => format("tns-runner-%2d", i)
  }
}

resource "digitalocean_droplet" "primary" {
  for_each = local.server_names

  image  = "ubuntu-20-04-x64"
  name   = each.value
  region = "nyc3"
  size   = "s-1vcpu-1gb"
}