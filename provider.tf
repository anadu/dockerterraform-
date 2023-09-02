terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host        = "unix:///var/run/docker.sock"
  config_path = "/root/.docker/config.json."
  email       = "kishoreaj1995@gmail.com"
  password    = "kishore012"

}
