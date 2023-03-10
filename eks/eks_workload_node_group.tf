#######################Addons-node-group

 locals {
worker-mng-name = "${var.name}-worker-${random_string.worker-mng-name.result}"
 }

resource "random_string" "worker-mng-name" {
  length  = 4
  upper   = false
  number  = true
  lower   = true
  special = false
}

resource "aws_eks_node_group" "worker-node-group" {
  cluster_name    = var.name
  node_group_name = local.worker-mng-name
  node_role_arn   = aws_iam_role.managed_workers.arn
  # node_role_arn   = "arn:aws:iam::898339205015:role/eks-node-group-instance-role-NodeInstanceRole-1I23WGK7RR7BJ"
  subnet_ids      = [ "subnet-045eb4225e4907770", "subnet-00ab38cf28580458b" ]

  launch_template {
   name = aws_launch_template.bottlerocket_lt.name
   version = aws_launch_template.bottlerocket_lt.latest_version
}

  scaling_config {
    desired_size = var.worker_desired_size
    max_size     = var.worker_max_size
    min_size     = var.worker_min_size
  }

depends_on = [aws_launch_template.bottlerocket_lt,
             aws_eks_cluster.cluster
] # removed local_file.aws_auth_configmap from depends_on

lifecycle {
    create_before_destroy = true
  }
}