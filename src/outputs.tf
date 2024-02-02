output "develop" {
  value = [{
    instance_name: var.vpc_name,
    external_ip: yandex_compute_instance.platform.network_interface[0].nat_ip_address,
    fqdn: yandex_compute_instance.platform.fqdn
  }, {
    instance_name: var.vm_db_vpc_name,
    external_ip: yandex_compute_instance.platform-db.network_interface[0].nat_ip_address,
    fqdn: yandex_compute_instance.platform-db.fqdn

  }]

  description = "vpc params"
}
