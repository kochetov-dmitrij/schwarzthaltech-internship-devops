# This is the main terraform script used for implemeneting the module created

module "service-alpha" {
  source = "./service-alpha"
}

module "vault" {
  source = "./vault"
}



/**
terraform {
  required_version = ">= 1.1.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
    vault = {
      version = "3.14.0"
    }
  }
}

################################
# Connect to vault server
# (deployed by docker-compose)
################################
provider "vault" {
  address = "http://localhost:8200"
  token   = "f23612cf-824d-4206-9e94-e31a6dc8ee8d"
}

############################################
# This secret must be read by the service
############################################
resource "vault_generic_secret" "alpha" {
  path      = "secret/alpha"
  data_json = <<EOT
{
  "smiling_face": "( ͡° ͜ʖ ͡°)",
  "bear": "ʕ•ᴥ•ʔ"
}
EOT
}

####################################
# Enable user-pass auth method
####################################
resource "vault_auth_backend" "userpass" {
  type = "userpass"
}

##############################
# Users and policies
##############################

# TODO: Add missing users and policies

# policy for the service-alpha container
resource "vault_policy" "service-alpha-policy" {
  name        = "service-alpha-policy"
  policy      = <<EOT
path "secret/alpha" {
  capabilities = ["read"]
}
EOT
}

# user with the above policy
resource "vault_userpass_user" "service-account" {
  username = "interviewee"
  password = "pass99"
  policies = [
    vault_policy.service-alpha-policy.name
  ]
}

###############################
# Build and run service-alpha
###############################
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

**/