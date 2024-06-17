resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-juraci-estudos"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aks-juraci-estudos"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }
  identity {
    type = "SystemAssigned"
  }
  
  network_profile {
    network_plugin     = "azure"
    load_balancer_sku  = "standard"
    outbound_type      = "loadBalancer"
  }

}

