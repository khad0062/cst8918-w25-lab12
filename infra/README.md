# Terraform Infrastructure Configuration

This directory contains the Terraform configurations for the lab infrastructure, split into two separate configurations:

## tf-backend/
Contains the Terraform configuration for creating the Azure Storage Account and container used to store the Terraform state files for the app infrastructure.

### Resources Created:
- Resource Group: `khad0062-githubactions-rg`
- Storage Account: `khad0062githubactions`
- Storage Container: `tfstate` (private)

### Deployment:
```bash
cd infra/tf-backend
terraform init
terraform fmt
terraform validate
terraform plan --out=tf-backend.plan
terraform apply tf-backend.plan
```

## tf-app/
Contains the main Terraform configuration for the application infrastructure. Uses remote state stored in the Azure Storage Account created by the tf-backend configuration.

### Current Resources:
- Resource Group: `khad0062-a12-rg`

### Deployment:
```bash
# First, set the ARM_ACCESS_KEY environment variable
cd infra/tf-backend
export ARM_ACCESS_KEY=$(terraform output -raw arm_access_key)

# Then deploy the app infrastructure
cd ../tf-app
terraform init
terraform fmt
terraform validate
terraform plan --out=tf-app.plan
terraform apply tf-app.plan
```

## Important Notes:
1. The tf-backend and tf-app folders are separate Terraform configurations
2. The backend configuration must be deployed first
3. The ARM_ACCESS_KEY environment variable must be set before deploying the app infrastructure
4. All Terraform commands should be run in the respective folder (tf-backend or tf-app)
