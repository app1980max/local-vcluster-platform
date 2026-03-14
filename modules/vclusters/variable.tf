
variable "name" {}
variable "namespace" {}

variable "loft_host" {}
variable "loft_user" {}
variable "loft_password" {}

variable "loft_project" {
  default = "Default Project"
}

variable "kubeconfig_path" {
  description = "Number of additional control planes for HA"
  type        = string
  default     = "~/.kube/config"
}
