resource "null_resource" "push_to_registry" {
  triggers = {
    image_id = docker_image.terraform.image_id
  }

  provisioner "local-exec" {
    command = "https://index.docker.io/v1/terraform:latest" # Replace with your registry URL and image name
  }
}