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

################################

variable "MySQL-name" {
  type    = string
  default = "mg-mysql-data"
}
variable "MySQL-user" {
  type    = string
  default = "mahmoud"
}
variable "MySQL-user-password" {
  type = string
}
variable "MySQL-version" {
  type    = string
  default = "8.0.21"
}
variable "MySQL-sku" {
  type    = string
  default = "GP_Standard_D2ads_v5"
}