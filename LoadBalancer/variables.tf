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
variable "Public-ip" {
  type = string
}

variable "lb-name" {
  type    = string
  default = "MG"
}
variable "lb-sku" {
  type    = string
  default = "Standard"
}