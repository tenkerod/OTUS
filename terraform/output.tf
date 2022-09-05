output "load_balancer_public_ip" {
  description = "Public IP address of load balancer"
  value = yandex_lb_network_load_balancer.wp_lb.listener.*.external_address_spec[0].*.address
}

output "database_host_fqdn" {
  description = "DB hostname"
  value = local.dbhosts
}

output "database_user" {
  description = "DB user"
  value = local.dbuser
}

output "database_user_password" {
  description = "DB user password"
  sensitive = true
  value = local.dbpassword
}
