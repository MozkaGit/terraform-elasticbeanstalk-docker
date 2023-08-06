# Create a S3 bucket to hosts the Dockerfile
resource "aws_s3_bucket" "game-2048" {
  bucket = "game-2048-${random_pet.petname.id}"
}

# Upload the Dockerfile to the S3 bucket
resource "aws_s3_object" "game-2048" {
  bucket = aws_s3_bucket.game-2048.id
  key    = "Dockerfile"
  source = "Dockerfile"
}