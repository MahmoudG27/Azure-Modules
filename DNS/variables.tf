variable "RG-name" {
  type        = string
  default     = "MG"
  description = "Specifies the resource group where the resource exists"
}

variable "DNS-name" {
  type    = string
  default = "demo.mg.io"
  description = "The name of the DNS Zone. Must be a valid domain name"
}