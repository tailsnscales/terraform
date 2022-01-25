terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.17.0"
    }
  }

  backend "http" {
    
  }
}

variable "do_token" {
  type = string
  description = "Authentication token for Digital Ocean"
}

provider "digitalocean" {
  token = var.do_token
}
