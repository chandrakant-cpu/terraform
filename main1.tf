data "docker_registry_image" "nginx" {	
name = "nginx:latest"	
}	
 	 	
resource "docker_image" "nginx" {	
 name = "${data.docker_registry_image.nginx.name}"	
 pull_triggers = ["${data.docker_registry_image.nginx.name}"] 	
 }	
