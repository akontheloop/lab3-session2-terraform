# Lab 3 - Session 2: Terraform

## Objective
Provision scalable infrastructure using Terraform (Infrastructure as Code).

## Tools Used
- Terraform
- Docker
- NGINX

## Infrastructure Created
- 1 Docker NGINX image
- 2 Docker containers
- Container 1 exposed on port 8081
- Container 2 exposed on port 8082

## Execution Steps

### Initialize Terraform
terraform init

### Validate Configuration
terraform validate

### Generate Execution Plan
terraform plan

### Deploy Infrastructure
terraform apply

## Verification

Check running containers:

docker ps

Access applications:

- http://localhost:8081
- http://localhost:8082

## Result
Successfully provisioned scalable infrastructure using Terraform by deploying two NGINX containers with different host ports.
