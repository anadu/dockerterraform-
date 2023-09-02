
provisioner "local-exec" {
  command = <<EOT
    echo "${var.password}" | docker login -u "${var.username}" --password-stdin
  EOT
}
