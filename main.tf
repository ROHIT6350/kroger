terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "apache" {
  name = "${var.docker_username}/apache-server:latest"
  build {
    context = "."
  }
}

resource "docker_container" "apache" {
  name  = "apache-server"
  image = docker_image.apache.name
  ports {
    internal = 80
    external = 8080
  }
}
