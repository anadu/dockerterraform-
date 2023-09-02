resource "docker_registry_image" "zoo" {
  name          = "000100000/terraform:latest" # Replace with your registry information
  image_id      = docker_image.zoo.image_id
}