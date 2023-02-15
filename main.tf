# Get the current client configuration from the AzureRM provider.
# This is used to populate the root_parent_id variable with the
# current Tenant ID used as the ID for the "Tenant Root Group"
# management group.

provider "vault" {
  # https://vault-private-vault-dc313441.891c127a.z1.hashicorp.cloud:8200/
  address = "https://vault-public-vault-dc313441.891c127a.z1.hashicorp.cloud:8200"
  # skip_tls_verify = true
  token = "hvs.CAESINJcQXOB6gLPL6uc7GFQ9lKHQSfP3r0G0s-r2ctQMmnwGicKImh2cy5CZ09GUDJueHRHWUpvNmpRWHg4d0l3MnAuZklxZXcQqTE"
}

# The Followign read only resources are obtained
data "vault_generic_secret" "my_secret" {
  path = "secret/github"
}


# Configure the GitHub Provider
provider "github" {
  token = data.vault_generic_secret.my_secret.data["token"] #"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"
  owner = var.github_username
}

resource "github_repository" "gh_repo" {
  name        = var.github_repo
  description = "My awesome codebase"
  visibility  = "public"
}