# Variables used for the code
variable "tenant_id" {
  type        = string
  description = "The Azure Active Directory tenant ID"
}

variable "subscription_id" {
  type        = string
  description = "The Azure Subscription ID"
}

variable "VAULT_APPROLE" {
  type        = string
  description = "The AppRole path without the trailing slash"
  default     = ""
}

variable "role_id" {
  type        = string
  description = "The AppRole role ID"
  default     = ""
}

variable "secret_id" {
  type        = string
  description = "The AppRole secret ID"
  sensitive   = true
  default     = ""
}

variable "vault_azure_secret_backend_path" {
  type        = string
  description = "The Azure Secrets path in vault without the trailing slash"
  default     = ""
}

variable "vault_azure_secret_backend_role_name" {
  type        = string
  description = "The Azure Secrets role name in Vault"
  default     = ""
}

variable "VAULT_NAMESPACE" {
  type        = string
  description = "The Vault namespace"
  default     = ""
}

variable "VAULT_ADDRESS" {
  type        = string
  description = "The Vault server address"
  default     = ""
}

