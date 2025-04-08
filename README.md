# Paper Social

A social media application built with Node.js and Express, deployed on AWS using Terraform.

## Project Structure
Hello Brijesh

```
.
├── app/                 # Application code
├── infra/              # Infrastructure as Code (Terraform)
│   ├── main.tf         # Main Terraform configuration
│   ├── variables.tf    # Terraform variables
│   ├── output.tf       # Terraform outputs
│   └── user_data.sh    # EC2 instance initialization script
├── .env                # Environment variables (not tracked)
├── .gitignore         # Git ignore rules
└── README.md          # Project documentation
```

## Prerequisites

- Node.js (v18 or higher)
- AWS Account
- AWS CLI configured
- Terraform installed
- Git

## Setup

1. Clone the repository:
```bash
git clone <your-repo-url>
cd paper-social
```

2. Install dependencies:
```bash
npm install
```

3. Configure AWS:
```bash
aws configure
```

4. Initialize Terraform:
```bash
cd infra
terraform init
```

5. Create terraform.tfvars:
```bash
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your values
```

6. Apply Terraform configuration:
```bash
terraform plan
terraform apply
```

## Development

Start the development server:
```bash
npm run dev
```

## Infrastructure

The infrastructure is managed using Terraform and includes:
- VPC with public subnet
- EC2 instance (t2.micro)
- Security groups
- CloudWatch monitoring
- IAM roles and policies

## Security

- SSH access is restricted to specific IP addresses
- Environment variables are not tracked in version control
- AWS credentials are managed through AWS CLI

## License

MIT 