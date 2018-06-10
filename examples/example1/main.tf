variable "region" {
  default = "us-west-2"
}

provider "aws" {
  region = "${var.region}"
}

data "aws_availability_zones" "available" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "1.34.0"

  name = "test-eks-vpc"
  cidr = "10.0.0.0/16"

  azs             = "${data.aws_availability_zones.available.names}"
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

module "eks_cluster" {
  source = "../.."

  cluster_name = "testcluster"
  vpc_id       = "${module.vpc.vpc_id}"
  subnet_list  = "${module.vpc.public_subnets}"
}

output "endpoint" {
  value = "${module.eks_cluster.endpoint}"
}

output "certificate_authority" {
  value = "${module.eks_cluster.certificate_authority_data}"
}
