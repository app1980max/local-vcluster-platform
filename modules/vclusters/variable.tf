
variable "name" {}
variable "namespace" {}

variable "loft_host" {
  description = "Number of additional control planes for HA"
  type        = string
  default     = "vcluster-dev.appflex.io"
}

variable "loft_user" {
  description = "Number of additional control planes for HA"
  type        = string
  default     = "admin"
}

variable "loft_password" {
  description = "Number of additional control planes for HA"
  type        = string
  default     = "admin"
}

variable "kubeconfig_path" {
  description = "Number of additional control planes for HA"
  type        = string
  default     = "~/.kube/config"
}
