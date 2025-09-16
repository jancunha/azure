variable "subscription_id" {
  description = "Azure subscription id"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "lab-rg"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "lab-aks"
}

variable "dns_prefix" {
  description = "The DNS prefix of the AKS cluster"
  type        = string
  default     = "labaks1"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "The size of the VM"
  type        = string
  default     = "Standard_B2s"
}

variable "tags" {
  description = "The tags of the AKS cluster"
  type        = map(string)
  default = {
    "Environment" = "Lab"
  }
}

# variable "container_registry" {
#   description = "Container registry name"
#   type        = string
#   default     = "labcr${random_id.suffix.hex}"
# }