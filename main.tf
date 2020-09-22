####small modification  added for NishaChandra###############################################################################
Variable name
###########################################################
container_name = ghost_blog1
image_name = ghost:alpine
ext_port = 8080
###################################################################
variable "image_name"{}
variable "container_name" {}
vaiable "ext_port"{
default = ["8080"]
}
vaiable "int_port"{
address= ["2368"]
}

data "docker_registry_image" "ghost_container" {
  name = "var.container_name"
}

resource "docker_image" "ghost" {
  name          = "${data.docker_registry_image.var.image_name.name}"
  pull_triggers = ["${data.docker_registry_image.image.name}"]
}

#network
resource "docker_network" "access_network" {
	name = "${docker_network.access_network.var.ext_port}"
	name ="${docker_network.access_network.var.int_port.var.int_port}"
}

##################################################
not to have variables explicilty asked for login
#################################################
-var-file ="path for variable file"
