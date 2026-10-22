
output "test_fixtures_bucket_name" {
  description = "Name of the supporting S3 bucket"
  value       = aws_s3_bucket.test_fixtures.bucket
}

output "test_fixtures_bucket_arn" {
  description = "ARN of the supporting S3 bucket"
  value       = aws_s3_bucket.test_fixtures.arn
}

output "aws_region" {
  description = "AWS region used by the project"
  value       = var.aws_region
}
