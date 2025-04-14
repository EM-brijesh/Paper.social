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


## 📊 Monitoring Dashboard

AWS CloudWatch Agent installed on EC2.  


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

## ✅ Features Covered (Per Assessment)

### 1. 🔨 Infrastructure as Code (Terraform)

- Provisioned EC2 instance in public subnet
- VPC, subnet, internet gateway, route tables
- IAM Role with access to:
  - CloudWatch
  - Amazon ECR
- Security Group to expose ports 22, 80, 3000
- **Modular code ready for reuse**

---

### 2. ⚙️ Configuration Management (Ansible)

- Docker installed
- AWS CLI (v2) installed via zip method
- CloudWatch agent installed and configured
- Ubuntu user added to docker group
- All automated with one-liner: `./run.sh`

---

### 3. 🚀 CI/CD (GitHub Actions)

- On push to `master`, GitHub Actions:
  - Configures AWS CLI
  - Logs in to ECR
  - Builds Docker image
  - Pushes to ECR
  - SSHs into EC2
  - Pulls & runs latest container

```yaml
- uses: appleboy/ssh-action@master
  with:
    host: ${{ secrets.EC2_HOST }}
    username: ubuntu
    key: ${{ secrets.EC2_SSH_KEY }}
    script: |
      docker pull ...
      docker stop ... || true
      docker run ...
## License

MIT 