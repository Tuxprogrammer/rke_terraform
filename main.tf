terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.7.4"
    }
  }
}
provider "proxmox" {
  # url is the hostname (FQDN if you have one) for the proxmox host you'd like to connect to to issue the commands. my proxmox host is 'prox-1u'. Add /api2/json at the end for the API
  pm_api_url = "https://node01.tuxhpc.net:8006/api2/json"
  # api token id is in the form of: <username>@pam!<tokenId>
  pm_api_token_id = "scallicott@TUXHPC!terraform-manjaro"
  # this is the full secret wrapped in quotes. don't worry, I've already deleted this from my proxmox cluster by the time you read this post
  pm_api_token_secret = vars.pm_api_secret
  # leave tls_insecure set to true unless you have your proxmox SSL certificate situation fully sorted out (if you do, you will know)
  pm_tls_insecure = true
}
module "k8s-master" {
  source = "./modules/k8s-master"
  count = 4
  vm_name = "k8s-m${count.index + 1}"
  node_loc = "node0${count.index + 1}"
  node_network = "10.2.0.${count.index + 1}0/8"
  node_gw = "10.0.0.1"
}
module "k8s-worker1" {
  source = "./modules/k8s-worker"
  count = 4
  vm_name = "k8s-w${count.index + 1}1"
  node_loc = "node0${count.index + 1}"
  node_network = "10.2.0.${count.index + 1}1/8"
  node_gw = "10.0.0.1"
}
# module "k8s-worker2" {
#   source = "./modules/k8s-worker"
#   count = 4
#   vm_name = "k8s-w${count.index + 1}2"
#   node_loc = "node0${count.index + 1}"
#   node_network = "10.2.0.${count.index + 1}2/8"
#   node_gw = "10.0.0.1"
  
# }
# module "k8s-worker3" {
#   source = "./modules/k8s-worker"
#   count = 4
#   vm_name = "k8s-w${count.index + 1}3"
#   node_loc = "node0${count.index + 1}"
#   node_network = "10.2.0.${count.index + 1}3/8"
#   node_gw = "10.0.0.1"
# }