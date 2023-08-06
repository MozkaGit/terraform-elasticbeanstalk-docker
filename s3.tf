# Create a S3 bucket to hosts the Dockerfile
resource "aws_s3_bucket" "game-2048" {
  bucket = "${var.bucket_prefix}-${random_pet.petname.id}"
}

# Upload the Dockerfile to the S3 bucket
resource "aws_s3_object" "game-2048" {
  bucket = aws_s3_bucket.game-2048.id
  key    = var.key_file
  source = var.source_file
}