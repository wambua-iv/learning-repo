/*
provider "azurerm" {
    features{
    }
}

resource "azurerm_resource_group" "dep1" {
    name = "ghrg1"
    location = "uksouth"
}
*/

provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "aws_tf_task" {
  cidr_block = "10.0.0.0/16"
}
