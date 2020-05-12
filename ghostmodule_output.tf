output "ip_address" {
  value = "${docker_conatiner.ghost_container.public_ip}"
}

output "container_name" {
  value = ["${docker_conatiner.ghost_conatiner.container_name}"]
}