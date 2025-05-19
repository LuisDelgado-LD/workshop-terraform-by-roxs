#
output "nombre_db" {
  description = "Nombre de la bd creada en AWS"
  value       = aws_dynamodb_table.db.name
}
output "ARN" {
  description = "ARN asignado al recurso en AWS"
  value       = aws_dynamodb_table.db.arn
}
