
output "endpoint" {
  value = aws_eks_cluster.example.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.example.certificate_authority[0].data
}

output "identity" {
  value = aws_eks_cluster.example.identity
}

# output "issuer" {
#   value = aws_eks_cluster.example.certificate_authority.identity.oidc.issuer
# }

output "cluster_name" {
  value = aws_eks_cluster.example.id
}