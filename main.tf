resource "azurerm_resource_group" "appgrp" {
  name     = local.resource_group_name
  location = local.location  
}
#this is my main branch
#it is first