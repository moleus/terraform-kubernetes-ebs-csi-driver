removed {
  from = kubernetes_csi_driver_v1.ebs
  lifecycle {
    // managed by EKS
    destroy = false
  }
}
