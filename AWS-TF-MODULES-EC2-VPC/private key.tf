resource "tls_private_key" "wave" {
algorithm = "RSA"
}

module "key_pair" {
source = "terraform-aws-modules/key-pair/aws"

key_name = var.NAME
public_key = trimspace(tls_private_key.wave.public_key_openssh)
}

resource "null_resource" "key-wave" {
  provisioner "local-exec" {
    command = <<-EOT
      sudo echo '${tls_private_key.wave.private_key_pem}' > ./'${var.wave-key}'.pem
      sudo chmod 400 ./'${var.wave-key}'.pem
    EOT
  }
}
