terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.28.0"
    }

    # random password lagaye hai uske liye hai terraform init -upgrade command chalin hai iske bad
    # random = {
    #   source = "hashicorp/random"
    #   version = "3.7.2"
    # }
  }
}

provider "azurerm" {

  features {}
  tenant_id       = "f209d19e-5e4e-4a58-b26e-1470085d5083"
  subscription_id = "dca730da-70fd-4260-b8ee-4b5f250b4840"

}
# provider "random" {

# }