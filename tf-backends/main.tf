provider "azurerm" {
  features {}

  subscription_id = "15bf39bd-005b-41d5-ae94-ff7a9cff417d"
}

module "dev_backend" {
  source = "./modules/backend"
  environment = "dev"
}

module "test_backend" {
  source = "./modules/backend"
  environment = "test"
}

module "prod_backend" {
  source = "./modules/backend"
  environment = "prod"
}