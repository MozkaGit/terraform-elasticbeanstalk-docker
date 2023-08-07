# Variable for aws_elastic_beanstalk_application
variable "eb_app_name" {
  description = "Name of the EB application"
  default     = "NULL"
}

# Variables for aws_elastic_beanstalk_application_version
variable "eb_app_version_name" {
  description = "Name of the EB application version"
  default     = "NULL"
}
variable "application" {
  description = "Application argument value"
  default     = "NULL"
}

# Variables for aws_elastic_beanstalk_environment
variable "eb_env_name" {
  description = "Name of the EB environment"
  default     = "NULL"
}
variable "platform" {
  description = "Defines the platform to be used to deploy the application"
  default     = "NULL"
}

# Variable for aws_S3_bucket
variable "bucket_prefix" {
  description = "Prefix for the bucket name"
  default     = "NULL"
}

# Variables for aws_s3_object
variable "key_file" {
  description = "Key argument value"
  default     = "NULL"
}
variable "source_file" {
  description = "Source argument value"
  default     = "NULL"
}

# Variable for aws_iam_role
variable "role_name" {
  description = "Name of the IAM role"
  default     = "NULL"
}

# Variable for aws_iam_role_policy_attachment
variable "policy" {
  description = "Attach policy to the IAM role"
  default     = "NULL"
}

# Variable for aws_iam_instance_profile
variable "profile_name" {
  description = "Name of the IAM instance profile"
  default     = "NULL"
}