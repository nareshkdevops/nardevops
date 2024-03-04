#creation of app service plan
resource "azurerm_service_plan" "companyplan" {
  name                = "companyplan"
  resource_group_name = local.resource_group_name
  location            = local.location
  os_type             = "Windows"
  sku_name            = "B1"
  depends_on = [ azurerm_resource_group.appgrp ]
}

#Creation of webapp
resource "azurerm_windows_web_app" "companyappn1000" {
  name                = "companyappn1000"
  resource_group_name = local.resource_group_name
  location            = local.location
  service_plan_id     = azurerm_service_plan.companyplan.id

  site_config {
    application_stack {
      current_stack = "dotnet"
      dotnet_version = "v6.0"
    }
  }
  depends_on = [ azurerm_service_plan.companyplan ]
}