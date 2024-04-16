variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the resource group in which to create the storage account"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = " Specifies the supported Azure location where the resource exists"
}

variable "SA-name" {
  type        = string
  default     = "mg-demmo"
  description = "Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed"
}

variable "SA-tier" {
  type        = string
  default     = "Standard"
  description = " Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid"
}

variable "SA-replication" {
  type        = string
  default     = "GRS"
  description = "Defines the type of replication to use for this storage account"
}

variable "SA-kind" {
  type        = string
  default     = "Storage_V2"
  description = "Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2"
}

variable "container-name" {
  type        = string
  default     = "demo"
  description = "The name of the Container which should be created within the Storage Account"
}

variable "container-access" {
  type        = string
  default     = "blob"
  description = "The Access Level configured for this Container"
}