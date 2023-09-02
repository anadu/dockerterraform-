
resource "null_resource" "docker_login" {
  provisioner "local-exec" {
    command = "docker login -u kishoreaj1995@gmail.com -p Kishore012"
  }
}
