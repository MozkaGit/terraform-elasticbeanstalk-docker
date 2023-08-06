# Define EB application code to upload
resource "aws_s3_bucket" "game-2048" {
  bucket = "2048-${random_pet.petname.id}"
}

resource "aws_s3_object" "game-2048" {
  bucket = aws_s3_bucket.game-2048.id
  key    = "beanstalk/Dockerrun.aws.json"
  source = "Dockerrun.aws.json"
}

# Define EB application
resource "aws_elastic_beanstalk_application" "game-2048" {
  name        = "2048-game"
  description = "Elastic Beanstlak app for 2048"
}

resource "aws_elastic_beanstalk_application_version" "game-2048" {
  name        = "2048-version"
  application = "2048-game"
  description = "application version"
  bucket      = aws_s3_bucket.game-2048.id
  key         = aws_s3_object.game-2048.id
}

# Define EB environment
resource "aws_elastic_beanstalk_environment" "env-2048" {
  name                = "2048-game"
  application         = aws_elastic_beanstalk_application.game-2048.name
  solution_stack_name = "64bit Amazon Linux 2023 v4.0.0 running Docker"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "IamInstanceProfile"
    value = "aws-elasticbeanstalk-ec2-role"
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name = "ServiceRole"
    value = "aws-elasticbeanstalk-ec2-role"
  }

}

# To print the env CNAME after creation
output "env_cname" {
  value = "http://${aws_elastic_beanstalk_environment.env-2048.cname}"
}