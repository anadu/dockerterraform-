terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
  registry_auth {
    address = "quay.io:8181"
    username = "kishoreaj1995@gmail.com"
    password = "Kishore012"
  } 

}


