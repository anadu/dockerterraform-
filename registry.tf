resource "docker_registry_image" "helloworld" {
  name          = terraform2
  keep_remotely = true
}
