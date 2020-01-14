module "resource" {
  source  = "app.terraform.io/BSOCloud02/resource/azure"
  version = "0.0.7"
  name = "rg-terraform"
  location = "westeurope"
}
  
resource "null_resource" "workspace_name" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "echo ${terraform.workspace}"
  }
}
  
resource "null_resource" "check_env_name" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "echo $input"
  }
}

resource "null_resource" "check_env_name_full" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "echo $TF_VAR_input"
  }
}
