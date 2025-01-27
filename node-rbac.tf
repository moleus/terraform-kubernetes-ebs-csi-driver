#- labels           = {} -> null
#- name             = "ebs-csi-node" -> null

removed {
  from = kubernetes_service_account.node
  lifecycle {
    destroy = true
  }
}
resource "kubernetes_service_account" "node" {
  metadata {
    name      = local.daemonset_name
    namespace = var.namespace
    labels    = var.labels
  }
  automount_service_account_token = true
}

removed {
  from = kubernetes_cluster_role.node
  lifecycle {
    # "app.kubernetes.io/managed-by" = "EKS"
    destroy = false
  }
}

removed {
  from = kubernetes_cluster_role_binding.node
  lifecycle {
    # "app.kubernetes.io/managed-by" = "EKS"
    destroy = false
  }
}
