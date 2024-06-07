data "azurerm_resource_group" "project-resource-group" {
  name = "${local.project_name}-rg"
}
