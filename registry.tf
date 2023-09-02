
resource "null_resource" "docker_login" {
  provisioner "local-exec" {
    command = "docker login -u var.username -p var.password"
  }
}
