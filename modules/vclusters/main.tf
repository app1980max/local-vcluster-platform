
resource "helm_release" "vcluster" {
  name             = var.name
  repository       = "https://charts.loft.sh"
  chart            = "vcluster"
  namespace        = var.namespace
  create_namespace = true
}

resource "null_resource" "register" {
  provisioner "local-exec" {
    command = "loft cluster add --name ${var.name} --namespace ${var.namespace}"
  }

  depends_on = [helm_release.vcluster]
}

