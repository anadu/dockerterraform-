resource "docker_image" "zoo" {
  name = "zoo"
  build {
    context = "."
  }
  triggers = {
    dir_sha1 = sha1(join("", [for f in fileset(path.module, "src/*") : filesha1(f)]))
  }
}

resource "docker_container" "foo" {
  name  = "foo"
  image = docker_image.zoo.image_id

  ports {
    internal = "80"
    external = "8080"
  }
}
