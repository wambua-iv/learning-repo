provider "azurerm" {
    features{
    }
}

resource "azurerm_resource_group" "dep1" {
    name = "ghrg1"
    location = "uksouth"
}
