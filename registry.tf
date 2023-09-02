
data "docker_registry" "example" {
  server = "https://index.docker.io/v1/"
}

# Docker login resource
resource "docker_login" "example" {
  name     = "myregistry.example.com"
  registry = data.docker_registry.example.id
  email    = "kishoreaj1995@gmail.com"
  password = "Kishore012"
}
