# Terraform AWS Infrastructure

[![Terraform](https://github.com/ChitranshuTiwari/terraform-aws-infra/actions/workflows/terraform.yml/badge.svg)](https://github.com/ChitranshuTiwari/terraform-aws-infra/actions/workflows/terraform.yml)

> A hands-on DevOps portfolio project demonstrating Infrastructure as Code with Terraform. Built for learning and GSoC preparation.

Infrastructure as Code for AWS - VPC, EKS, and Monitoring modules.

## Structure

```
├── modules/
│   ├── vpc/        # VPC, subnets, internet gateway
│   ├── eks/        # EKS cluster (simplified)
│   └── monitoring/ # CloudWatch logs
├── environments/
│   ├── dev/
│   └── prod/
└── .github/workflows/
```

## Usage

```bash
cd environments/dev
terraform init
terraform plan
```

## Note

Requires AWS credentials. Use `terraform.tfvars` (copy from example) for actual deployment.

## License

MIT
