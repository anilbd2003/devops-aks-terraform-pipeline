# Create Outputs
# 1. Resource Group Location
# 2. Resource Group Id
# 3. Resource Group Name

output "location" {
  value = azurerm_resource_group.aks_rg.location
}

output "resource_group_id" {
  value = azurerm_resource_group.aks_rg.id
}

output "resource_group_name" {
  value = azurerm_resource_group.aks_rg.name
}

output "versions" {
  value = data.azurerm_kubernetes_service_versions.current.versions
}

output "latest_version" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

output "azuread_admin_group" {
    value = azuread_group.aks-admin_group.object_id
  
}

output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks-cluster.id
  
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks-cluster.name
  
}

output "aks_cluster_k8s_version" {
  value = azurerm_kubernetes_cluster.aks-cluster.kubernetes_version
  
}


