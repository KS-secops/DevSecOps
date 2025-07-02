package main

deny[msg] {
  input.kind == "Pod"
  input.spec.containers[_].securityContext.runAsUser == 0
  msg = "Le conteneur ne doit pas s'exécuter en tant que root (UID 0)."
}
