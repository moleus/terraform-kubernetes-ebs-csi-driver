removed {
  from = kubernetes_service_account.csi_driver
  lifecycle {
    # ebs-csi-controller     1         2y206d
    # ebs-csi-controller-sa  0         20d
    destroy = true
  }
}

removed {
  from = kubernetes_cluster_role_binding.provisioner
  lifecycle {
    # "app.kubernetes.io/managed-by" = "EKS"
    destroy = false
  }
}

removed {
  from = kubernetes_cluster_role.provisioner
  lifecycle {
    destroy = false
  }
}

removed {
  from = kubernetes_cluster_role_binding.provisioner
  lifecycle {
    destroy = false
  }
}

removed {
  from = kubernetes_cluster_role.attacher
  lifecycle {
    destroy = false
  }
}

removed {
  from = kubernetes_cluster_role_binding.attacher
  lifecycle {
    destroy = false
  }
}

removed {
  from = kubernetes_cluster_role.resizer
  lifecycle {
    destroy = false
  }
}

removed {
  from = kubernetes_cluster_role_binding.resizer
  lifecycle {
    destroy = false
  }
}

removed {
  from = kubernetes_cluster_role.snapshotter
  lifecycle {
    destroy = false
  }
} 

removed {
  from = kubernetes_cluster_role_binding.snapshotter
  lifecycle {
    destroy = false
  }
}

removed {
  from = kubernetes_cluster_role.liveness_probe
  lifecycle {
    destroy = false
  }
}
