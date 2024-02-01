### image and instance vars vm_db

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_vpc_name" {
  type        = string
  default     = "develop_db"
  description = "VPC network & subnet name"
}

variable "vm_db_family" {
  type    = string
  default = "ubuntu-2004-lts"
  description = "https://cloud.yandex.com/en/marketplace?tab=software&categories=os"
}

variable "vm_db_name" {
  type    = string
  default = "netology-develop-platform-db"
  description = "Compute instance name"
}

variable "vm_db_platform_id" {
  type    = string
  default = "standard-v2"
  description = "https://cloud.yandex.com/en/docs/compute/concepts/vm-platforms"
}

variable "vm_db_cores" {
  type    = number
  default = 2
  description = "https://cloud.yandex.com/en/docs/compute/concepts/performance-levels"
}

variable "vm_db_memory" {
  type    = number
  default = 2
  description = "https://cloud.yandex.com/en/docs/compute/concepts/performance-levels"
}

variable "vm_db_core_fraction" {
  type    = number
  default = 20
  description = "https://cloud.yandex.com/en/docs/compute/concepts/performance-levels"
}

variable "vm_db_is_preemptable" {
  type    = bool
  default = true
  description = "https://cloud.yandex.com/en/docs/compute/concepts/preemptible-vm"
}

variable "vm_db_root_login" {
  type    = string
  default = "ubuntu"
  description = "Login name"
}
