resource "aws_iam_role" "beanstalk_service" {
  name = var.role_name

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": [
                    "ec2.amazonaws.com"
                ]
            },
            "Action": "sts:AssumeRole"
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "beanstalk_log_attach" {
  role       = aws_iam_role.beanstalk_service.name
  policy_arn = var.policy
}

resource "aws_iam_instance_profile" "beanstalk_iam_instance_profile" {
  name = var.profile_name
  role = aws_iam_role.beanstalk_service.name
}