resource "aws_dynamodb_table" "db" {
  name         = "aws_dynamodb_table"
  hash_key     = "id"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "inyeccion_datos" {
  table_name = aws_dynamodb_table.db.name
  hash_key   = aws_dynamodb_table.db.hash_key
  #  for_each = tomap(local.data)
  #  item       = jsonencode({ "id" : { "S" : "001" }, "name": { "S" : "Ada" }, "score" : { "N" : "95"}})
  for_each = local.data2
  item     = jsonencode(each.value)
}
