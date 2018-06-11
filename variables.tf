variable "cluster_name" {
  description = "Cluster name"
}

variable "subnet_list" {
  description = "List of subnets"

  type = "list"
}

variable "security_group_list" {
  description = "List of security group IDs"

  type    = "list"
  default = []
}

variable "kubernetes_version" {
  default     = ""
  description = "Desired Kubernetes master version. If you do not specify a value, the latest available version is used."
}
