# LOCALS

locals {
  vault_address                        = var.VAULT_ADDRESS
  vault_namespace                      = var.VAULT_NAMESPACE
  approle_path                         = var.VAULT_APPROLE
  vault_azure_secret_backend_role_name = var.VAULT_APPROLE
  vault_approleid                        = var.VAULT_APPROLEID
  vault_appsecretid                    = var.VAULT_APPSECRETID
  vault_authbackend                     = var.VAULT_AUTHBACKEND

}

# USE
# resource "aws_s3_bucket" "my_test_bucket" {
#  bucket = local.bucket_name
#  acl    = "private"
# 
#  tags = {
#    Name        = local.bucket_name
#     Environment = local.env
#  }
#}
