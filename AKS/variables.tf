variable "RG-name" {
  type        = string
  default     = "MG"
  description = "Specifies the Resource Group where the Managed Kubernetes Cluster should exist"
}

variable "RG-location" {
  type        = string
  default     = "North Europe"
  description = "The location where the Managed Kubernetes Cluster should be created"
}

variable "ClusterSubnet-id" {
  type        = string
  description = "The ID of a Subnet where the Kubernetes Node Pool should exist"
}

################################

# kubernetes Cluster
variable "AKS-version" {
  type        = string
  default     = "1.27.9"
  description = "Version of Kubernetes specified when creating the AKS managed cluster"
}

variable "AKS-name" {
  type    = string
  default = "The name of the Managed Kubernetes Cluster to create"
}

variable "Node-RG" {
  type        = string
  default     = "MG-Cluster"
  description = "The name of the Resource Group where the Kubernetes Nodes should exist"
}

variable "AKS-sku" {
  type    = string
  default = "Standard"
  description = "The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free, Standard and Premium"
}

# Agent Pool
variable "AgentPool-name" {
  type        = string
  default     = "agentpool"
  description = "The name which should be used for the default Kubernetes Node Pool"
}

variable "AgentPool-Node-Count" {
  type        = number
  default     = 2
  description = "The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 and between min_count and max_count"
}

variable "AgentPool-Node-Min-Count" {
  type        = number
  default     = 2
  description = "The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000"
}

variable "AgentPool-Node-Max-Count" {
  type        = number
  default     = 5
  description = "The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000"
}

variable "AgentPool-Pods-Node" {
  type        = number
  default     = 110
  description = "The maximum number of pods that can run on each agent"
}

variable "AgentPool-OS-sku" {
  type        = string
  default     = "Ubuntu"
  description = "Specifies the OS SKU used by the agent pool. Possible values are AzureLinux, Ubuntu, Windows2019 and Windows2022"
}

variable "AgentPool-OS-disk-type" {
  type        = string
  default     = "Ephemeral"
  description = "The type of disk which should be used for the Operating System. Possible values are Ephemeral and Managed"
}

variable "AgentPool-OS-disk-size" {
  type        = number
  default     = 128
  description = "The size of the OS Disk which should be used for each agent in the Node Pool"
}

variable "AgentPool-VMsize" {
  type        = string
  default     = "Standard_D8ds_v5"
  description = "The size of the Virtual Machine, such as Standard_DS2_v2. temporary_name_for_rotation must be specified when attempting a resize"
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