resource "azurerm_service_plan" "web-app-service-plan" {
  name                = "${local.project_name}-service-plan"
  resource_group_name = data.azurerm_resource_group.project-resource-group.name
  location            = data.azurerm_resource_group.project-resource-group.location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "web-app" {
  name                = "${local.project_name}-web-app"
  resource_group_name = data.azurerm_resource_group.project-resource-group.name
  location            = data.azurerm_resource_group.project-resource-group.location
  service_plan_id     = azurerm_service_plan.web-app-service-plan.id

  site_config {}
}
