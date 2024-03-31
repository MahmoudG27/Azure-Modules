variable "RG-name" {
  type    = string
  default = "MG"
}
variable "RG-location" {
  type    = string
  default = "North Europe"
}
variable "Subnet-id" {
  type    = string
}
################################

variable "Nic-name" {
  type = string
  default = "Mg-NIC"
}
variable "Nic-PrivateIP" {
  type    = string
  default = "10.224.0.70"
}
