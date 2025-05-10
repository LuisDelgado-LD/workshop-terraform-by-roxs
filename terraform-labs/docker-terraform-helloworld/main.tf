resource "docker_image" "docker-container" {
  name = var.docker-image-name
  build {
    context = var.docker-main-dir
    label = {
      author : "${var.author}"
    }
  }
}
resource "docker_container" "contenedor1" {
  name = var.container-name
  image = var.docker-image-name
  #image = docker_image.docker-container.image_id
  ports {
    internal = var.container-internal-port
    external = var.container-external-port
    ip       = var.container-port-IP
  }
}
