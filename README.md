# Deploying Dockerfile on Elastic Beanstalk with Terraform

This project aims to deploy the game 2048 contained in a Dockerfile on Elastic Beanstalk using Terraform (but you can use it with any containerized app). Elastic Beanstalk is an AWS-managed application orchestration service that simplifies the deployment, scaling, and management of your applications.

## Project Configuration

Before getting started, make sure you have the following configured:

- An AWS account with access keys and permissions to deploy resources.
- Terraform installed locally on your development machine.
- Your Docker application's file (Dockerfile, docker-compose.yml or Dockerrun.aws.json) containing all the dependencies and configurations required for running the application.

## Installation

1. Clone this repository to your local machine.
2. Ensure Terraform is properly installed and configured with the correct AWS access keys.
3. Place your application's file at the root of the project.

```
.
├── Dockerfile
├── README.md
├── eb.tf
├── outputs.tf
├── provider.tf
├── random_pet.tf
├── s3.tf
├── terraform.tfvars
└── variables.tf
``````

## Usage

1. Ensure all necessary configurations have been made in the Docker application file.
2. Open a terminal and navigate to the root directory of the project.
3. Run the command `terraform init` to initialize Terraform and download the required providers.
4. Run the command `terraform apply` to create the resources on AWS.
5. Once the deployment is complete, you'll receive the access URL (CNAME) for your Elastic Beanstalk application in the terminal.

```
Outputs:

env_cname = "http://2048-game.eba-gbpzfpec.us-east-1.elasticbeanstalk.com"
```

## Deployment

The deployment process involves the following steps:

1. Terraform will create an Elastic Beanstalk instance based on the provided Docker application file.
2. Elastic Beanstalk will push the Docker image onto the instance and deploy the application.
3. You'll be able to access your application using the URL provided by Elastic Beanstalk.

![2048 game](https://github.com/MozkaGit/2048-terraform-aws_eb/assets/43102748/1d156aef-e1d7-4dd2-bc2f-22ca230b5f37)

## Cleanup

To avoid unnecessary charges, make sure to run `terraform destroy` in order to destroy the created resources after finishing your tests.

## Acknowledgements

The [code](https://github.com/gabrielecirulli/2048) for the 2048 game in this project is based on the work of [gabrielecirulli](https://github.com/gabrielecirulli). 

---
