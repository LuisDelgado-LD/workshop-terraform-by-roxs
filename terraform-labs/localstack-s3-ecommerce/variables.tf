variable "nombre-bucket" {
  type        = string
  description = "nombre del bucket que se creara para la página web"
  default     = "pagina-eshop"
}

variable "listado-de-archivos" {
  type        = map(string)
  description = "Archivos a subir para la página web"
  #  default     = ["./web/js/scripts.js", "./web/index.html", "./web/css/styles.css", "./web/assets/favicon.ico"]
  #  default     = ["/js/scripts.js", "/index.html", "/css/styles.css", "/assets/favicon.ico"]
  default = {
    "/js/scripts.js" = "text/javascript",
    "/index.html" = "text/html",
    "/css/styles.css"     = "text/css",
    "/assets/favicon.ico" = "image/vnd.microsoft.icon"
  }
}

variable "ip_servidor_s3" {
  type    = string
  default = "http://localhost.localstack.cloud:4566/"
}
