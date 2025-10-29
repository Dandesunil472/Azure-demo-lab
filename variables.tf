variable "rg_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "rg-demo-terraform"
}

variable "location" {
  description = "Azure region for the Resource Group"
  type        = string
  default     = "East US"
}
