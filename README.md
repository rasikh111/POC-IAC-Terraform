# POC-IAC-Terraform

## ☁️ About Terraform & AWS

### 🔧 What is Terraform?

[Terraform](https://www.terraform.io/) is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp. It allows you to define, provision, and manage cloud infrastructure using declarative configuration files written in HashiCorp Configuration Language (HCL).

Instead of manually creating resources through the AWS Console, Terraform enables you to define your infrastructure in code, store it in version control (like Git), and apply it consistently across multiple environments.

### 🤝 How Terraform Interacts with AWS

Terraform uses the **AWS provider plugin** to communicate with AWS services. Here's how the interaction typically works:

1. **Configuration**:
   - You write `.tf` files that describe AWS resources (e.g., EC2, VPC, S3).
   - You declare the AWS provider and authentication method (via environment variables, IAM roles, shared credentials file, etc.).

2. **Initialization (`terraform init`)**:
   - Downloads the AWS provider plugin.
   - Prepares the working directory for deployment.

3. **Planning (`terraform plan`)**:
   - Terraform compares your desired state (defined in code) with the current state (AWS infrastructure).
   - It outputs an execution plan showing what will be created, changed, or destroyed.

4. **Apply (`terraform apply`)**:
   - Executes the planned changes



---

## ⚙️ Sample Demo Tasks + Little Projects

Below are examples of demo tasks included or you can implement in this POC:

- ✅ Create a custom VPC
- ✅ Launch EC2 instances with custom user data
- ✅ Create and attach security groups
- ✅ Deploy an S3 bucket with versioning and static website
- ✅ Provision an RDS instance
- ✅ Use Terraform workspaces for multiple environments
- ✅ Terraform state file Locking
- ✅ Split infrastructure using modules
- ✅ Use variable files for different deployments
- ✅ And More

---

## 🛠️ Getting Started

### 🔧 Prerequisites

- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)
- Cloud CLI (e.g., AWS CLI configured with credentials)
- Git

###  Setup Steps

```bash
# Clone the repo
git clone https://github.com/rasikh111/POC-IAC-Terraform

# Initialize Terraform
terraform init

# Select or create a workspace (for multi-environment)
terraform workspace new dev

# Preview changes
terraform plan -var-file="terraform.tfvars"

# Apply infrastructure
terraform apply -var-file="terraform.tfvars"


