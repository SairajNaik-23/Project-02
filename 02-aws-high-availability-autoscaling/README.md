# 02 — Highly Available AWS Infrastructure with Auto Scaling

## Goal
Deploy a basic HTTP demo across two public subnets using an Application Load Balancer (ALB), launch template, and Auto Scaling Group (ASG).

## Architecture
Internet → ALB (two subnets) → Target Group → EC2 Auto Scaling Group

## Before applying
This project creates billable AWS resources. Use a sandbox account, review the plan, and destroy the stack after testing. The AMI lookup uses Amazon Linux 2023. The demo user data starts a basic web server.

## Run
```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform output alb_dns_name
```
Open the output hostname in a browser. Then test scaling by adjusting load or changing ASG settings in a controlled lab. Clean up with `terraform destroy`.

## Production improvements
Use private EC2 subnets, an egress design such as NAT or VPC endpoints, HTTPS with ACM, WAF, tighter security groups, IAM instance profiles, and deployment automation.
