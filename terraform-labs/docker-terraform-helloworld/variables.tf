variable "docker-image-name" {
  type = string
}

variable "container-name" {
  type    = string
  default = "contenedor-desconocido"
}

variable "docker-main-dir" {
  type    = string
  default = "./helloworld-demo-node/."
}

variable "author" {
  type = string
  #  default = LD
}

variable "container-internal-port" {
  type    = number
  default = 8080
}

variable "container-external-port" {
  type    = number
  default = 80
}
variable "container-port-IP" {
  type    = string
  default = "127.0.0.1"
}
