# https://www.terraform.io/docs/configuration/variables.html
# Input Variables
# Output Values
# Local Values (Optional)

# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

variable "location" {
  default = "eastus"
  description = "This will be location all resources will be created."
  type = string
  
}

variable "resource_group_name" {
  description = "This will be resource group name"
  default = "terraform-aks"
  type = string
  
}

variable "environment" {

  description = "This variable define environment var."
  #default = "dev2"
  type = string
  
}

# V2 Changes
# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  #default = "~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}

# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"  
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "P@ssw0rd1234abcd"
  description = "This variable defines the Windows admin password k8s Worker nodes"  
}