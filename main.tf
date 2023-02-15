# Get the current client configuration from the AzureRM provider.
# This is used to populate the root_parent_id variable with the
# current Tenant ID used as the ID for the "Tenant Root Group"
# management group.

provider "vault" {
  address   = local.vault_address
  namespace = local.vault_namespace
  auth_login {
    path      = "auth/${local.approle_path}/login"
    namespace = local.vault_namespace
    parameters = {
      role_id   = var.role_id
      secret_id = var.secret_id
    }
  }
}



# # Configure the GitHub Provider
# provider "github" {
#   token = data.vault_generic_secret.my_secret.data["token"] #"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"
#   owner = var.github_username
# }

# resource "github_repository" "gh_repo" {
#   name        = var.github_repo
#   description = "My awesome codebase"
#   visibility  = "public"
# }
