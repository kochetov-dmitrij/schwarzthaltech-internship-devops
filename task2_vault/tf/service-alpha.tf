# This module is responsible for building and deploying the service-alpha container.

terraform {
  required_version = ">= 1.1.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

# Build and run service-alpha
resource "docker_image" "service-alpha" {
  name = "service-alpha"

  build {
    context = "../services/alpha"
    tag     = ["service-alpha"]
  }
  triggers = {
    dir_sha1 = sha1(join("", [for f in fileset(path.module, "../services/alpha/*") : filesha1(f)]))
  }
}

resource "docker_container" "service-alpha" {
  image = docker_image.service-alpha.image_id
  name  = "service-alpha"

  env = [
    "VAULT_ADDR=http://vault:8200",
    "VAULT_USERNAME=service-account-1",
    "VAULT_PASSWORD=pass99",
  ]
  networks_advanced {
    name = "task2_vault_net_a"
  }
}
