# OUTPUT

output "backend" {
  value       = data.vault_azure_access_credentials.creds.backend
  description = "vault_azure_access_credentials backend creds"
}

output "role" {
  value       = data.vault_azure_access_credentials.creds.role
  description = "vault_azure_access_credentials creds backend role"
}
