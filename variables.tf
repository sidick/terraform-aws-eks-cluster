variable "cluster_name" {
  description = "Cluster name"
}

variable "vpc_id" {
  description = "VPC ID"
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

variable "tags" {
  description = "AWS Tags to set - TODO"

  default = {}
  type    = "map"
}

variable "kubernetes_version" {
  default     = ""
  description = "Desired Kubernetes master version. If you do not specify a value, the latest available version is used."
}