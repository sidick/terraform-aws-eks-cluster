output "endpoint" {
  value = "${aws_eks_cluster.cluster.endpoint}"
}

output "version" {
  value = "${aws_eks_cluster.cluster.version}"
}

output "certificate_authority_data" {
  value = "${aws_eks_cluster.cluster.certificate_authority.0.data}"
}
