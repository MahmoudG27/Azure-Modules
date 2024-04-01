variable "RG-name" {
  type    = string
  default = "MG"
  description = "Resource Group Name"
}

variable "RG-location" {
  type    = string
  default = "North Europe"
  description = "Resource Group Location"
}

variable "SA-name" {
  type    = string
  default = "mg-demmo"
  description = "Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed"
}

variable "SA-tier" {
  type = string
  default = "Standard"
  description = "Defines the Kind of account"
}

variable "SA-replication" {
  type = string
  default = "GRS"
  description = "Defines the type of replication to use for this storage account"
}

variable "SA-kind" {
  type = string
  default = "Storage_V2"
  description = "Defines the Kind of account"
}

variable "container-name" {
  type = string
  default = "demo"
  description = "The name of the Container which should be created within the Storage Account"
}

variable "container-access" {
  type = string 
  default = "blob"
  description = "The Access Level configured for this Container"
}