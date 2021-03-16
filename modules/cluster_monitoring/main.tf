
resource "helm_release" "timescale" {
  name = "timescale"
  repository = "https://charts.timescale.com/"
  chart      = "timescale"

}

resource "helm_release" "promscale" {
  name = "timescale"
  repository = "https://charts.timescale.com/"
  chart      = "timescale/promscale"
  version = "0.5.5"
  
     values = [
    "modules/cluster_monitoring/values.yaml"
  ]

}

resource "helm_release" "prometheus" {
  name = "timescale"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = ""
  version = "13.3.3"
  
     values = [
    "modules/cluster_monitoring/values.yaml"
  ]

}