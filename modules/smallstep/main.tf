# https://github.com/bitnami/charts/tree/3f2b19ad2743d28828b5c217b2b682e0db57be75/bitnami/influxdb
resource "helm_release" "autocert" {
  name       = "autocert"
  repository = "https://smallstep.github.io/helm-charts"
  chart      = "smallstep/autocert"

  values = [
    file("${path.module}/values.yaml")
  ]

}
