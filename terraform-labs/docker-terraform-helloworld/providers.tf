terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      #      version = "~> 3.0.2"
      version = "3.4.0"
    }
  }
}

provider "docker" {
  # Configuration options
}

