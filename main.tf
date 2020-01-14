module "resource" {
  source  = "app.terraform.io/BSOCloud02/resource/azure"
  version = "0.0.7"
  name = "rg-terraform"
  location = "westeurope"
}
  
resource "null_resource" "cluster" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "echo ${terraform.workspace}"
  }
}
