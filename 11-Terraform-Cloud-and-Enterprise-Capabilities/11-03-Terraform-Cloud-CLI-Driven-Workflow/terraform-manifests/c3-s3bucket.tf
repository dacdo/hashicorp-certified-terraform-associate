# Call our Custom Terraform Module which we built earlier
module "s3-website" {
  source  = "app.terraform.io/hcta-dacdo/s3-website/aws"
  version = "1.0.2"
  # insert required variables here
  bucket_name = var.my_s3_bucket
  tags        = var.my_s3_tags
}
# credentials "app.terraform.io" {
#   # valid user API token:
#   token = "xxxxxx.atlasv1.zzzzzzzzzzzzz"
# }
