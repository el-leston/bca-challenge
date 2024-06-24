output bucket_name {
  value       = aws_s3_bucket.bca_bucket.id
  description = "Name of the bucket"
}
