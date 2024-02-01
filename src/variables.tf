###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFA7H1kOJ8NtQkf7zu2FBeS3oTIb59DVFWKSvsIj9TvM vigntom@gmail.com"
  description = "ssh-keygen -t ed25519"
}

### image and instance vars 

variable "vm_web_family" {
  type    = string
  default = "ubuntu-2004-lts"
  description = "https://cloud.yandex.com/en/marketplace?tab=software&categories=os"
}

variable "vm_web_name" {
  type    = string
  default = "netology-develop-platform-web"
  description = "Compute instance name"
}

variable "vm_web_platform_id" {
  type    = string
  default = "standard-v2"
  description = "https://cloud.yandex.com/en/docs/compute/concepts/vm-platforms"
}

variable "vm_web_cores" {
  type    = number
  default = 2
  description = "https://cloud.yandex.com/en/docs/compute/concepts/performance-levels"
}

variable "vm_web_memory" {
  type    = number
  default = 1
  description = "https://cloud.yandex.com/en/docs/compute/concepts/performance-levels"
}

variable "vm_web_core_fraction" {
  type    = number
  default = 5
  description = "https://cloud.yandex.com/en/docs/compute/concepts/performance-levels"
}

variable "vm_web_is_preemptable" {
  type    = bool
  default = true
  description = "https://cloud.yandex.com/en/docs/compute/concepts/preemptible-vm"
}

variable "vm_web_root_login" {
  type    = string
  default = "ubuntu"
  description = "Login name"
}
