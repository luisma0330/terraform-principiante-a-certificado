resource "aws_s3_bucket" "proveedores" {
    count = 6
  bucket = "proveedores-regional-mexico-${random_string.sufijo[count.index].id}"

  tags = {
    Name        = "proveedores_regional_mexico_${random_string.sufijo[count.index].id}"
    Environment = "Dev"
    Owner       = "luis.manuel.ojeda"
    Office      = "City 32"
  }
}

resource "random_string" "sufijo" {
  count = 6
  length  = 8
  special = false
  upper   = false
  numeric = false
}
