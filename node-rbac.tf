removed {
  from = kubernetes_service_account.node
  lifecycle {
    destroy = true
  }
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
