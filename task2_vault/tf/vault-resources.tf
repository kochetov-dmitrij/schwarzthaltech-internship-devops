# This module is reponsible for managing service in vault that is required by service-alpha

terraform {
  required_version = ">= 1.1.0"

  required_providers {
    vault = {
      version = "3.14.0"
    }
  }
}

# Connect to vault server
# (deployed by docker-compose)
provider "vault" {
  address = "http://localhost:8200"
  token   = "f23612cf-824d-4206-9e94-e31a6dc8ee8d"
}

# This secret must be read by the service
resource "vault_generic_secret" "alpha" {
  path      = "secret/alpha"
  data_json = <<EOT
{
  "smiling_face": "( ͡° ͜ʖ ͡°)",
  "bear": "ʕ•ᴥ•ʔ"
}
EOT
}

# Enable user-pass auth method
resource "vault_auth_backend" "userpass" {
  type = "userpass"
}

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
