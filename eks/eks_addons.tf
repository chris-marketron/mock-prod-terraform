variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))

  default = [
    {
      name    = "kube-proxy"
      version = "v1.21.14-eksbuild.2"
    },
    {
      name    = "vpc-cni"
      version = "v1.11.4-eksbuild.1"
    },
    {
      name    = "coredns"
      version = "v1.8.4-eksbuild.2"
    }
  ]
}

resource "aws_eks_addon" "addons" {
  for_each          = { for addon in var.addons : addon.name => addon }
  cluster_name      = var.name
  addon_name        = each.value.name
  addon_version     = each.value.version
  resolve_conflicts = "OVERWRITE"
}
