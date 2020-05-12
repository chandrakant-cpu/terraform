variable "image_name" {}
variable "conatiner_name"{}

resource "docker_image" "ghost" {
  name = "var.image_name"
}

resource "docker_container" "ghost_container" {
  name  = "conatiner_name"
  image = "${docker_image.ghost.name}"
}

