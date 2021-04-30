resource "helm_release" "bitnami" {
  name       = "influx"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "influxdb"

  values = [
    file("${path.module}/values.yaml")
  ]

  set_sensitive {
    name  = "auth.admin.username"
    value = "root"
  }
  set_sensitive {
    name  = "auth.admin.password"
    value = "password"
  }
  set_sensitive {
    name  = "auth.user.password"
    value = "password"
  }
  set_sensitive {
    name  = "auth.admin.token"
    value = "banaani"
  }
}