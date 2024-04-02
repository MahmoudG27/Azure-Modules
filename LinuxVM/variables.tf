variable "RG-name" {
  type    = string
  default = "MG"
}
variable "RG-location" {
  type    = string
  default = "North Europe"
}

variable "Runner-PrivateIP" {
  type = list(string)
}

################################

# VM Variables
variable "VM-name" {
  type    = string
  default = "MG"
}
variable "VM-size" {
  type    = string
  default = "Standard_F2"
}
variable "VM-user" {
  type    = string
  default = "Mahmoud"
}
variable "VM-user-password" {
  type    = string
  default = "P@ssw0rd123@"
}
variable "VM-storage-account" {
  type    = string
  default = "Standard_LRS"
}
variable "VM-disk-size" {
  type    = number
  default = 64
}
variable "VM-sku" {
  type    = string
  default = "22_04-lts"
}