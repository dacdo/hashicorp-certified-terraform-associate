# Output definitions

## S3 Bucket ARN
output "website_bucket_arn" {
  description = "ARN of the bucket"
  value = module.my_website_s3_bucket.arn 
}

## S3 Bucket Name
output "website_bucket_name" {
  description = "Name (id) of the bucket"
  value = module.my_website_s3_bucket.name
}

## S3 Bucket Domain
output "website_bucket_domain" {
  description = "Name (id) of the bucket"
  value = module.my_website_s3_bucket.domain
}

## S3 Bucket Endpoint
output "website_bucket_endpoint" {
  description = "Endpoint of the bucket"
  value = module.my_website_s3_bucket.endpoint
}

## S3 Bucket Region
output "website_bucket_region" {
  description = "Region of the bucket"
  value = module.my_website_s3_bucket.region
}