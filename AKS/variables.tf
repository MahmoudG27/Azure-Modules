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

variable "ClusterSubnet-id" {
  type    = string
  description = "Subnet will assoicate to AKS"
}

################################

# kubernetes Cluster
variable "K8s-version" {
  type    = string
  default = "1.27.9"
  description = "Version oF AKS"
}

variable "K8s-name" {
  type    = string
  default = "MG"
}

variable "Node-RG" {
  type    = string
  default = "MG-Cluster"
  description = "Name of the resource group will be created"
}

variable "K8s-sku" {
  type    = string
  default = "Standard"
}

# Agent Pool
variable "AgentPool-name" {
  type    = string
  default = "agentpool"
  description = "Name of Agent ScaleSet of AKS"
}

variable "AgentPool-Node-Count" {
  type    = number
  default = 2
  description = "Number of Node run the Workload"
}

variable "AgentPool-Node-Min-Count" {
  type    = number
  default = 2
  description = "The minimum Number of Node run the Workload"
}

variable "AgentPool-Node-Max-Count" {
  type    = number
  default = 5
  description = "The maximum Number of Node run the Workload"
}

variable "AgentPool-Pods-Node" {
  type    = number
  default = 110
  description = "The maximum Number of Pods on every Node"
}

variable "AgentPool-OS-sku" {
  type    = string
  default = "Ubuntu"
  description = "Type of OS for Nodes"
}

variable "AgentPool-OS-disk-type" {
  type    = string
  default = "Ephemeral"
  description = "The type of disk which should be used for the Operating System"
}

variable "AgentPool-OS-disk-size" {
  type    = number
  default = 128
  description = "Space of Disk on every Node"
}

variable "AgentPool-VMsize" {
  type    = string
  default = "Standard_D8ds_v5"
  description = "The size of the Virtual Machine"
}



# UserPool
variable "UserPool-name" {
  type    = string
  default = "userpool"
}

variable "UserPool-VMsize" {
  type    = string
  default = "Standard_D8ds_v5"
}

variable "UserPool-Node-Count" {
  type    = number
  default = 2
}

variable "UserPool-Node-Min-Count" {
  type    = number
  default = 2
}

variable "UserPool-Node-Max-Count" {
  type    = number
  default = 5
}

variable "UserPool-OS-sku" {
  type    = string
  default = "Ubuntu"
}

variable "UserPool-OS-disk-type" {
  type    = string
  default = "Ephemeral"
}

variable "UserPool-OS-disk-size" {
  type    = number
  default = 128
}

variable "UserPool-Pods-Node" {
  type    = number
  default = 110
}