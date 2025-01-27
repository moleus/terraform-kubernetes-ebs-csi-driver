removed {
  from = kubernetes_daemonset.node
  lifecycle {
    // managed by EKS
    destroy = false
  }
}
