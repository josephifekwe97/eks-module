module "vpc" {
  source = "./vpc"
  cidr_block = var.cidr_block
  instance_tenancy = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames
  tag = var.tag
}

module "eks" {
  source   =  "./eks/control_plane"
  cluster_name = "poc-cluster"
  cluster_role_name = "poc-cluster-IAM-role"
  private_subnet_1_id = module.vpc.private_subnet_1_id
  private_subnet_2_id = module.vpc.private_subnet_2_id
}

module "worker_node" {
  source = "./eks/worker_node"

  cluster_name = module.eks.cluster_name
  node_group_name = "poc-worker-nodes"
  private_subnet_1_id = module.vpc.private_subnet_1_id
  private_subnet_2_id = module.vpc.private_subnet_2_id
  instance_types = ["t3.medium"]
  capacity_type = "ON_DEMAND"
  desired_size = 3
  max_size = 4
  max_unavailable = 1
  min_size = 2
  worker_node_iam_role_name = "poc-worker-node-IAM-role"
  
}

module "eks_addons" {
  source = "./eks/eks_addons"
  cluster_name = module.eks.cluster_name
  addon_name = "aws-ebs-csi-driver"
}

