terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Create Resource Group with tags
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location

  tags = {
    App        = "100"
    TechOwner  = "Sunil-updatedterraform"
  }
}
# Second Resource Group
resource "azurerm_resource_group" "rg_sunil_demo" {
  name     = "Sunil-Demo"
  location = "East US"

  tags = {
    App       = "200"
    TechOwner = "Sunil"
  }
}
# Create a Storage Account inside Sunil-Demo Resource Group
resource "azurerm_storage_account" "stg_sunil_demo" {
  name                     = "sunilstorageacct01"
  resource_group_name      = azurerm_resource_group.rg_sunil_demo.name
  location                 = azurerm_resource_group.rg_sunil_demo.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    App       = "200"
    TechOwner = "Sunil"
  }
}
