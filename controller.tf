removed {
  from = kubernetes_deployment.ebs_csi_controller
  lifecycle {
    // managed by EKS
    destroy = false
  }
}
