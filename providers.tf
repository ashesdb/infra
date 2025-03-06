locals {
  kube_config = data.digitalocean_kubernetes_cluster.default.kube_config.0
  kube_host   = data.digitalocean_kubernetes_cluster.default.endpoint
}

provider "digitalocean" {
  token = var.DIGITALOCEAN_TOKEN

  spaces_access_id  = var.SPACES_ACCESS_KEY
  spaces_secret_key = var.SPACES_SECRET_KEY
}

provider "github" {
  owner = "ashesdb"
  token = var.GITHUB_TOKEN
}

provider "kubernetes" {
  host                   = local.kube_host
  token                  = local.kube_config.token
  client_certificate     = local.kube_config.client_certificate
  client_key             = local.kube_config.client_key
  cluster_ca_certificate = base64decode(local.kube_config.cluster_ca_certificate)
}
