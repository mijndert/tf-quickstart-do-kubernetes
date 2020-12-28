data "digitalocean_kubernetes_versions" "this" {
  version_prefix = "1.19."
}

resource "digitalocean_kubernetes_cluster" "this" {
  name         = var.cluster_name
  region       = var.cluster_region
  auto_upgrade = true
  version      = data.digitalocean_kubernetes_versions.this.latest_version

  node_pool {
    name       = "default"
    size       = var.node_size
    node_count = var.node_count
  }
}
