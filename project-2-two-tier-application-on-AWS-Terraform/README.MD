# Two tier Application on AWS using Terraform

## Project Description:
This project aims to create a robust available web application infrastructure using two-tier on AWS. This comprises a web tier that handles user requests and a database tier for datastore.I leveraged Terrafrom for  infra to provision and manage AWS  resources efficiently.

##Key Features
1. Infrastructure as Code (IaC): Leveraging Terraform for defining and provisioning the entire infrastructure, ensuring consistency and repeatability.
2. High Availability: Utilized multiple Availability Zones (AZs), the application is designed for high availability, minimizing downtime in case of failures.
3. Security: Implementing security best practices, such as network ACLs, security groups, and encryption, to protect data and resources.
4. Database Management: A managed database service Amazon RDS is used to store and manage application data, providing reliability and data durability.
5. Load Balancing: Employing Elastic Load Balancers (ELBs) to distribute incoming traffic across multiple web servers, optimizing resource utilization.

##Prerequistes
Basic knowledge of AWS services and concepts.
Familiarity with Terraform and infrastructure as code principles.
An AWS account with appropriate permissions.
An IDE of your Choice , I would vim.

##Terraform  Configuration
The Terraform configuration files with(*.tf) in this Directory defines AWS resources and settings required to create two-tier architecture on AWS.


##steps:

1. Setting Up the environment(already set, need a vm and terraform latest installed and cli for configure credentilas.)
2. Installing the neccessary plugins
3. Creating a sepreate VPC Architecture.
4. Creating Security Group
5. Creating thr Load Balancer
6. Creating Database in private subnet
7. Providing values for variables
8. Getting Dns as OUTPUT
9. Final Output
