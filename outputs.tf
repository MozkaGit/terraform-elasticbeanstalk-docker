# To print the env CNAME after creation
output "env_cname" {
  value = "http://${aws_elastic_beanstalk_environment.env-2048.cname}"
}