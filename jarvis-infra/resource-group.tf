
resource "azurerm_resource_group" "rg" {
  name     = local.project_name
  location = var.location
}
