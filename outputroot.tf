output "ip_address" {
  value = "${docker_conatiner.root_module.public_ip}"
}

output "container_name" {
  value = ["${docker_conatiner.root_module.container_name}"]
}