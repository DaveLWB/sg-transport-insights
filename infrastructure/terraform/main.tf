
resource "aws_s3_bucket" "test_fixtures" {
  bucket = var.bucket_name

  tags = {
    Project     = "SGTransportInsights"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Purpose     = "TestFixtures"
  }
}

resource "aws_s3_bucket_versioning" "test_fixtures" {
  bucket = aws_s3_bucket.test_fixtures.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "test_fixtures" {
  bucket = aws_s3_bucket.test_fixtures.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "test_fixtures" {
  bucket = aws_s3_bucket.test_fixtures.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
