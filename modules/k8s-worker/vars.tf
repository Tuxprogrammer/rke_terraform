variable "vm_name" {}
variable "node_loc" {}
variable "template_name" {
  default = "ubuntu-2004-cloudinit-template"
}
variable "node_network" {}
variable "node_gw" {}
variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5cLFQcTA7ZFm9trRCGq1xW234l/5U5lakkU1zgeMWHdve4heXR9tDMOuHiPEjnProJfg9L/Modjq0K0DpNO7jDvd+n44u+yQuYzfLhjArFU1fJzfxzGKmazkPkzELu/z3G9xR+5oBIiG7VtZr0j785IssVulZCduhsCd00TXY1w2PjEi2Y5frhFhTGi+pjuz96ErsNpEwhMNYjUvNHJh5+NUeMPnVhpyB+tOKHehHSJ2CBvY6CaPJd1rNd70ZjU1xnZE+rw7UTREKo7RZGgCLGkRH2tBMiQvrj7iZC12sb3tbuESFYxpZVoYlM3at7yxsa/YvUD7DZx9VOMBOqvuEfKYhvgFdVVZvAiK3Hp095D/C+4ToTxnWKSh9AJ40ehXI0uh6v03pQYbpS5+3c31YXvY3Q5pOl9I5e/HQ41YL7eN5jIezZWMMkEqd9bYRbDMTVbQf7W6wa2/4VBT9afwtaYqaEjlecce6/GYdAjQYGfkig0+m3Kv1PBQKsZ9P3WXV2XZCtIMwrOIvasur9PFIeq2eqaInuvtPEmMyq5313UNROK3R6fR+Q3T/+U3hR+UHP0wnxF+0PhD/bOypXtqEKDAiIjQoL3XWMUzoLm7W7T+jYFSJFvLl2T+93eFVVgMx0vZ6+AJg17NAtSMomI1aJFL4KpeFAGjaUW2M0bk2Xw== spencer-yubikey-c"
}
