variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the Resource Group where the MySQL Flexible Server should exist"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "The Azure Region where the MySQL Flexible Server should exist"
}

variable "MySQL-name" {
  type    = string
  default = "mg-mysql-data"
  description = "The name which should be used for this MySQL Flexible Server"
}

variable "MySQL-user" {
  type    = string
  default = "mahmoud"
  description = "The Administrator login for the MySQL Flexible Server"
}

variable "MySQL-user-password" {
  type = string
  default = "P@ssw0rd123@"
  description = " The Password associated with the administrator_login for the MySQL Flexible Server"
}

variable "MySQL-version" {
  type    = string
  default = "8.0.21"
  description = "The version of the MySQL Flexible Server to use. Possible values are 5.7, and 8.0.21"
}

variable "MySQL-sku" {
  type    = string
  default = "GP_Standard_D2ads_v5"
  description = "The SKU Name for the MySQL Flexible Server"
}