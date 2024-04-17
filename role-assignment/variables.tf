variable "principal-id" {
  type        = string
  description = "The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to"
}

variable "role-name" {
  type        = string
  default     = "Reader"
  description = "The name of a built-in Role. Changing this forces a new resource to be created"
}

variable "role-scope" {
  type    = string
  description = "The scope at which the Role Assignment applies to"
}
