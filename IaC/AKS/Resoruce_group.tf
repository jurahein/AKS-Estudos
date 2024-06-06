provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "rg" {
    name = "RG-AKS-JURACI"
    location = var.location
  
}