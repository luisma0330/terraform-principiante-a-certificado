resource "local_file" "productos" {
  content  = "lista de productos"
  filename = "productos.txt"
}