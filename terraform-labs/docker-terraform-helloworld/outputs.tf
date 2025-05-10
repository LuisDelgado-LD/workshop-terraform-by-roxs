output "URL" {
  description = "La url según las variables"
  value       = "${var.container-port-IP}:${var.container-external-port}"
}

output "Resultado" {
  description = "El estado del contenedor"
  value       = "El contenedor %{if docker_container.contenedor1.start}se ha iniciado%{else}se ha creado%{endif}"
}
