terraform {

  required_version = ">=0.15"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location 
}

resource "azurerm_container_group" "aci-test" {
  name                = "${var.prefix}-container01"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  ip_address_type     = "public"
  dns_name_label      = "${var.prefix}-container"
  os_type             = "linux"

  container {
    name   = "hello"
    image  = "microsoft/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.5"

  ports {
      port = "80"
      }

  }
}