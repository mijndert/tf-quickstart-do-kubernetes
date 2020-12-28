module "cluster" {
  source = "../"
  cluster_name = "example"
  cluster_region = "fra1"
  node_size = "s-2vcpu-2gb"
  node_count = 3
}
