# Variable for aws_elastic_beanstalk_application
eb_app_name = "2048-app"

# Variables for aws_elastic_beanstalk_application_version
eb_app_version_name = "2048-version"
application         = "2048-app" # must be the same value as the EB application name

# Variables for aws_elastic_beanstalk_environment
eb_env_name = "2048-env"
platform    = "64bit Amazon Linux 2023 v4.0.1 running Docker"

# Variable for aws_S3_bucket
bucket_prefix = "game-2048"

# Variables for aws_s3_object
key_file    = "Dockerfile"
source_file = "Dockerfile"

# Variable for aws_iam_role
role_name = "beanstalk_role"

# Variable for aws_iam_role_policy_attachment
policy = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier"

# Variable for aws_iam_instance_profile
profile_name = "beanstalk_iam_instance_profile"