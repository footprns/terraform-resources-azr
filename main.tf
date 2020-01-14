module "resource" {
  source  = "app.terraform.io/BSOCloud02/resource/azure"
  version = "0.0.3"
  name = "rg-terraform"
  location = "westeurope"
}
