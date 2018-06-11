# terraform-aws-eks-cluster

AWS EKS Cluster Creation Terraform Module
=========================================

This is a simple module to allow the easy creation of an EKS cluster. It does
not deal with EKS workers at all in order to allow easier customisation when
needed.

These types of resources are supported:

* [EKS Cluster](https://www.terraform.io/docs/providers/aws/r/eks_cluster.html)

Features
--------
This module aims to allow the easy implementation of
[EKS](https://aws.amazon.com/eks/) clusters in AWS, it only deals with the
cluster creation, creating and managing the workers is outside the scope for
this module.

If there is a missing feature or a bug - [open an issue](https://github.com/sidick/terraform-module-template/issues/new).

Usage
-----


##### Creating the cluster itself

```hcl
module "eks_cluster" {
  source = "sidick/eks-cluster/aws"

  cluster_name = "testcluster"
  subnet_list  = [
    "subnet-xxxxxxxxxxxxxxxxx",
    "subnet-yyyyyyyyyyyyyyyyy",
    "subnet-zzzzzzzzzzzzzzzzz"
  ]
}
```


Author
------

Module managed by [Simon Dick](https://github.com/sidick).

License
-------

BSD 3-Clause License. See LICENSE for full details.
