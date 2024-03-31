variable "RG-name" {
  type    = string
  default = "MG"
  description = "Resource Group Name"
}
################################

# Private DNS Name for ACR
variable "DNS-name" {
  type    = string
  default = "demo.mg.io"
}