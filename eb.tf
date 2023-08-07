# Create the EB application
resource "aws_elastic_beanstalk_application" "game-2048" {
  name        = var.eb_app_name
  description = "Elastic Beanstlak app for 2048"
}

# Create an EB application version associated with the application "2048-game"
# Use the S3 bucket and S3 object to fetch the application source code
resource "aws_elastic_beanstalk_application_version" "game-2048" {
  name        = var.eb_app_version_name
  application = var.application
  description = "application version"
  bucket      = aws_s3_bucket.game-2048.id
  key         = aws_s3_object.game-2048.id
}

# Create an EB environment linked to the application "2048-game"
# Use the application version "2048-version" for deployment
resource "aws_elastic_beanstalk_environment" "env-2048" {
  name                = var.eb_env_name
  application         = aws_elastic_beanstalk_application.game-2048.name
  solution_stack_name = var.platform
  version_label       = aws_elastic_beanstalk_application_version.game-2048.name

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }
}