removed {
  from = aws_iam_policy.ebs_controller_policy
  lifecycle {
    destroy = true
  }
}

removed {
  from = aws_iam_policy.ebs_controller_policy
  lifecycle {
    destroy = true
  }
}

removed {
  from = module.ebs_controller_role
  lifecycle {
    destroy = true
  }
}
