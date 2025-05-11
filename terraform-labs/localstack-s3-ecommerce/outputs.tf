#
output "URL" {
  description = "La url de acceso a la web del bucket"
  value       = "${var.ip_servidor_s3}${aws_s3_bucket.pagina_eshop.bucket}/index.html"
}
