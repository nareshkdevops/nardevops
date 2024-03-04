terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "26700515-2a20-462f-910b-6075ca860b58"
  tenant_id = "cf4f22ab-9b76-40b5-8ade-05720b227629"
  client_id = "a35d1760-eaf1-4665-9bf3-5d9af0e6e595"
  client_secret = "Wss8Q~orAXuf5NelEDj~UtQ2nFlvu~FFTxqDzbY1"
  features {
    
  }
}