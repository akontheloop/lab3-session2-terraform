terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "web" {
  count = 2

  name  = "terraform-web-${count.index + 1}"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8081 + count.index
  }
}

output "container_names" {
  value = docker_container.web[*].name
}

output "web_urls" {
  value = [
    "http://localhost:8081",
    "http://localhost:8082"
  ]
}
