resource "aws_s3_bucket" "pagina_eshop" {
  bucket        = var.nombre-bucket
  force_destroy = true
  tags = {
    name = "Lab roxs"
  }
}
resource "aws_s3_bucket_ownership_controls" "permisos-eshop" {
  bucket = aws_s3_bucket.pagina_eshop.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "acceso-publico" {
  bucket = aws_s3_bucket.pagina_eshop.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.permisos-eshop,
    aws_s3_bucket_public_access_block.acceso-publico,
  ]

  bucket = aws_s3_bucket.pagina_eshop.id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "http-config" {
  bucket = aws_s3_bucket.pagina_eshop.id

  index_document {
    suffix = "index.html"
  }
}

#resource "aws_s3_object" "subir-directorio" {
#  for_each     = tomap("${var.listado-de-archivos}")
#  key          = each.key
#  content_type = each.value
#  bucket       = aws_s3_bucket.pagina_eshop.id
#  source       = "./web${each.key}"
#}
resource "aws_s3_object" "subir-html" {
  for_each     = fileset("./web", "*.html")
  key          = "/${each.value}"
  bucket       = aws_s3_bucket.pagina_eshop.id
  source       = "./web/${each.key}"
  content_type = "text/html"
}

resource "aws_s3_object" "subir-directorio2" {
  for_each     = fileset("./web/", "*/*.ico")
  key          = "/${each.value}"
  bucket       = aws_s3_bucket.pagina_eshop.id
  source       = "./web/${each.key}"
  content_type = "image/vnd.microsoft.icon"
}
resource "aws_s3_object" "subir-directorio3" {
  for_each     = fileset("./web/", "*/*.css")
  key          = "/${each.value}"
  bucket       = aws_s3_bucket.pagina_eshop.id
  source       = "./web/${each.key}"
  content_type = "text/css"
}
resource "aws_s3_object" "subir-directorio4" {
  for_each     = fileset("./web/", "*/*.js")
  key          = each.value
  bucket       = aws_s3_bucket.pagina_eshop.id
  source       = "./web/${each.key}"
  content_type = "text/javascript"
}

