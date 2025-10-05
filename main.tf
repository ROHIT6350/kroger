resource "null_resource" "install_apache" {
  connection {
    host        = var.server_ip
    user        = var.server_user
    private_key = file("~/.ssh/id_rsa")
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install apache2 -y",
      "sudo systemctl enable apache2",
      "sudo systemctl start apache2"
    ]
  }
}
