module eks_cluster {
  source = "./modules/eks_cluster"
  cluster_name = "demo-eks-cluster-rahulkadam"
  node_group_name = "demo-eks-node-group-rahulkadam"
  eks_node_desired_size = 2
  eks_node_min_size = 2
  eks_node_max_size = 2
  eks_node_instance_types = "t2.medium"
  node_ami_type = "AL2_x86_64"
  k8s_version = "1.17"
  vpc_cidr_block = "10.210.0.0/16"

  subnet1 = { 
      "cidr_block" = "10.210.1.0/24"
      "availability_zone" = "ap-south-1a"
  }
  subnet2 = { 
      "cidr_block" = "10.210.2.0/24"
      "availability_zone" = "ap-south-1b"
  }
  subnet3 = { 
      "cidr_block" = "10.210.3.0/24"
      "availability_zone" = "ap-south-1a"
  }
  subnet4 = { 
      "cidr_block" = "10.210.4.0/24"
      "availability_zone" = "ap-south-1b"
  }
}


module helm_charts {
  source = "./modules/helm_charts"
}
