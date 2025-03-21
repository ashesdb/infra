variable "DEPLOYER_ROLE_NAME" {
  description = "Name of the deployer cluster role"
  type        = string
}

variable "DIGITALOCEAN_TOKEN" {
  description = "DigitalOcean token"
  type        = string
}

variable "GHCR_CREDENTIALS" {
  description = "GHCR credentials in user:token format"
  type        = string
}

variable "GITHUB_TOKEN" {
  description = "GitHub token"
  type        = string
}

variable "SPACES_ACCESS_KEY" {
  description = "Access key for DigitalOcean Spaces"
  type        = string
}

variable "SPACES_SECRET_KEY" {
  description = "Secret key for DigitalOcean Spaces"
  type        = string
}
