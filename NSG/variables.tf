variable "RG-name" {
  type        = string
  default     = "MG"
  description = "The name of the resource group in which to create the network security group"
}
variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "Specifies the supported Azure location where the resource exists"
}


variable "NSG-name" {
  type    = string
  default = "MG"
  description = "Specifies the name of the network security group"
}

variable "rule-name" {
  type    = string
  default = "rule1"
  description = "The name of the security rule"
}

variable "rule-priority" {
  type    = number
  default = 100
  description = "Specifies the priority of the rule. The value can be between 100 and 4096"
}

variable "rule-direction" {
  type    = string
  default = "Inbound"
  description = "The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound"
}

variable "rule-access" {
  type    = string
  default = "Allow"
  description = "Specifies whether network traffic is allowed or denied. Possible values are Allow and Deny"
}

variable "rule-protocol" {
  type    = string
  default = "TCP"
  description = "Network protocol this rule applies to. Possible values include Tcp, Udp, Icmp, Esp, Ah or * (which matches all)"
}