# Wheel

Terraform quickstarter for a Digitalocean Kubernetes cluster

## Usage

### Prerequisites

- A [Personal Access Token](https://cloud.digitalocean.com/account/api/tokens)

### Set environment variable

In order to access the Digitalocean API you need to set an environement variable in your shell.

```
export DIGITALOCEAN_ACCESS_TOKEN=<personal access token>
```

### Get information from the Digitalocean API

In order to use the module you need to know the names of images and regions. The API provides all information:

```
curl -X GET --silent "https://api.digitalocean.com/v2/images?per_page=999" -H "Authorization: Bearer $DIGITALOCEAN_ACCESS_TOKEN" |jq '.'
```
### Using the module

```
module "cluster" {
  source = "git::git@github.com:mijndert/wheel.git"
  cluster_name = "example"
  cluster_region = "fra1"
  node_size = "s-2vcpu-2gb"
  node_count = 3
}
```

## Backlog

- [ ] Add optional autoscaling
- [ ] State management
