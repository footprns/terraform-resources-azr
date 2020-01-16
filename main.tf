module "resource" {
  source  = "app.terraform.io/BSOCloud02/resource/azure//modules/rg"
  version = "0.0.9"
  name = "rg-terraform"
  location = "westeurope"
}

  
resource "null_resource" "workspace_name" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "find ./"
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

resource "null_resource" "check_python_version2" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = <<EOM
    python -V
    python3 -V
    EOM
  }
}

resource "null_resource" "check_version" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "uname -a"
  }
}

resource "null_resource" "check_run_model" {
  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "echo run_model"
  }
}
