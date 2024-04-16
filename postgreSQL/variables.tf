variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the Resource Group where the PostgreSQL Flexible Server should exist"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "The Azure Region where the PostgreSQL Flexible Server should exist"
}

variable "PostgreSQL-name" {
  type        = string
  default     = "mg-Postgresql-data"
  description = "The name which should be used for this PostgreSQL Flexible Server."
}

variable "PostgreSQL-user" {
  type        = string
  default     = "mahmoud"
  description = "The Administrator login for the PostgreSQL Flexible Server"
}

variable "PostgreSQL-user-password" {
  type        = string
  default     = "P@ssw0rd123@"
  description = "The Password associated with the administrator_login for the PostgreSQL Flexible Server"
}

variable "PostgreSQL-version" {
  type        = string
  default     = "12"
  description = "The version of PostgreSQL Flexible Server to use"
}

variable "PostgreSQL-sku" {
  type        = string
  default     = "GP_Standard_D4s_v3"
  description = "The SKU Name for the PostgreSQL Flexible Server"
}