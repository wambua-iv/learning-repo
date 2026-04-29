provider "azurerm" {
  features{

  }
}

variable "var_name" {
  type = string
}

variable "var_location" {
  type = string
}


resource "azurerm_resource_group" "wm_tf_training" {
  name = var.var_name
  location = var.var_location
}
