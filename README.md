🌐 Build Highly Available Infrastructure Using Terraform on Azure

This project demonstrates how to provision a highly available infrastructure on Microsoft Azure using Terraform, an Infrastructure as Code (IaC) tool. The goal is to build a scalable and fault-tolerant environment to host a static website.

The infrastructure includes:

A Virtual Network (VNet) with multiple subnets across different availability zones

A Network Security Group (NSG) to manage inbound/outbound traffic

A public and private subnet setup to enable secure access

A Load Balancer to ensure high availability

Two Linux Virtual Machines (Ubuntu) deployed in separate availability zones

Apache web server installed via a custom user data script

A Public IP for external access

This setup ensures traffic is distributed across instances for fault tolerance and better performance, while allowing web access through a secure and controlled network path.

### 1. Resource Group Created

**Terraform Output - Git Bash**

![Terraform Output](screenshots/rg-created-gitbash.png)

**Azure Portal Screenshot**

![Resource Group - Azure Portal](screenshots/rg-created-azure-portal.png)

### 2. Create Virtual Network & Subnets

Terraform output:

![Terraform Apply](./screenshots/terraform-vnet-subnet-apply.png)

Azure Portal view:

![image](https://github.com/user-attachments/assets/3abf5736-6259-44a0-be62-48ca181f7c19)

### 3. Network Security Group (NSG) Configuration

- Created an NSG named `nsg-web` with rules to allow:
  - **HTTP (port 80)** for web access
  - **SSH (port 22)** for remote access

- Associated the NSG with the **public subnet** to protect and manage inbound traffic.

![NSG Screenshot](screenshots/nsg-web-rules.png)


