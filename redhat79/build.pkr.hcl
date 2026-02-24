build {
  sources = ["source.amazon-ebs.rhel"]

  provisioner "shell" {
    script = "assets/scripts/setup.sh"
  }

  provisioner "shell" {
    inline = ["mkdir -p /tmp/hello-world"]
  }

  provisioner "file" {
    source      = "assets/apps/hello-world/"
    destination = "/tmp/hello-world"
  }

  provisioner "shell" {
    script = "assets/scripts/deploy-app.sh"
  }

  provisioner "shell" {
    script = "assets/scripts/setup-service.sh"
  }

  provisioner "shell" {
    script = "assets/scripts/cleanup.sh"
  }

  post-processor "manifest" {
    output     = "manifest.json"
    strip_path = true
  }
}
