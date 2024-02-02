locals {
  names = { for role in var.roles: role => "netology-${var.env}-${var.project}-${role}" }
}
