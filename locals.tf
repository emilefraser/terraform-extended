# LOCALS

locals {
  bucket_name = "mytest"
  env         = "dev"
  instance_ids = concat(aws_instance.ec1.*.id, aws_instance.ec3.*.id)
  env_tags = {
    envname = "dev"
    envteam = "devteam"
  }
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
