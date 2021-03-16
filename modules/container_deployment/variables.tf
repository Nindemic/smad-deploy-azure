variable "cluster_name" {
  type = string
}

variable "hono_prometheus_enabled" {
  type        = bool
  description = "If true creates prometheus instance from hono helm chart"
}

variable "hono_grafana_enabled" {
  type        = bool
  description = "If true enables grafana in hono helm chart"
}
