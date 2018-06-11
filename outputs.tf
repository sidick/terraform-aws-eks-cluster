output "endpoint" {
  description = "The endpoint for your Kubernetes API server"
  value       = "${aws_eks_cluster.cluster.endpoint}"
}

output "version" {
  description = "The Kubernetes server version for the cluster"
  value       = "${aws_eks_cluster.cluster.version}"
}

output "certificate_authority_data" {
  description = "The base64 encoded certificate data required to communicate with your cluster"
  value       = "${aws_eks_cluster.cluster.certificate_authority.0.data}"
}

output "kubeconfig-aws" {
  description = "Example kubeconfig based on other parameters"
  value       = "${local.kubeconfig}"
}

output "arn" {
  description = "The ARN of the cluster"
  value       = "arn:aws:eks:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:cluster/${aws_eks_cluster.cluster.id}"
}
