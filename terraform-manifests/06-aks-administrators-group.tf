resource "azuread_group" "aks-admin_group" {
  display_name     = "${azurerm_resource_group.aks_rg.name}-${var.environment}-administrators"
  security_enabled = true
  
}
