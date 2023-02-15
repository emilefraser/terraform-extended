# Variables used for the code

variable "subscription_id" {
  type = string
  default = "00000000-0000-0000-0000-000000000000"
  description = "Azure subscription ID"
}

variable "client_id" {
  type = string
  description = "Azure subscription ID"
}

variable "client_secret" {
  type = string
  description = "Azure client secret"
}

variable "tenant_id" {
  type = string
  description = "Azure AD Tenant ID"
}

variable "global_settings" {
  type = string
  description = "Setting read in from a global settings block"
}

# MAP
variable "tags" {
  type        = map
  description = "All mandatory tags to use on all assets"
  default = {
    activityName       = "AzureVMWindowsDemo"
    automation         = "Terraform"
    solutionOwner      = "jackwesleyroper"
  }
}

# OBJECT
variable "os" {
  description = "OS image to deploy"
  type = object({
    publisher = string
    offer = string
    sku = string
  })
}





# LIST
variable "cidrs" { default = [] }
variable "sidrs" { type = "list" }



# LIST OF OBJECTS
variable "storage_config" {
  type = list(object({
    name                      = string
    account_kind              = string
}))
}


variable "availability_zone_names" {
  type    = list(string)
  default = ["us-west-1a"]
}
