package main

deny[msg] {
  input.kind == "Pod"
  input.spec.containers[_].securityContext.runAsNonRoot == false
  msg = "Running as root is not allowed"
}
