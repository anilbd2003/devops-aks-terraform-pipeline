# 1. Terraform Settings Block
terraform {
    required_version = ">=0.13"
    required_providers {
       azurerm = {
         source = "hashicorp/azurerm"
         version = "3.61.0"
       }
       azuread = {
         source = "hashicorp/azuread"
         version = "2.39.0"
       }
        random = {
          source = "hashicorp/random"
          version = "3.5.1"
        }
     }

    backend "azurerm" {
    # resource_group_name = "storageAccount-RG"
    # storage_account_name = "backendstorageaccount20"
    # container_name = "tfstate"
    # key = "terraform-custom-vnet.tfstate"
     
   }

}

provider "azurerm" {
  features {
    
  }
}

resource "random_pet" "aksrandom" {
  
}









