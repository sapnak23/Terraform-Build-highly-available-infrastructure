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

### 4. NAT Gateway – Private Subnet
   
To allow outbound internet access from the private subnet, a NAT Gateway was configured and associated with private-subnet-1.

This configuration allows Linux virtual machines (VMs) in the private subnet to:

Access the internet (for installing packages, updates, etc.)

Without exposing them to any inbound traffic (i.e., they are not directly reachable from the internet)

![NAT Gateway - Private Subnet](./screenshots/nat-gateway-private-subnet.png)

### 5. Deploy Linux VM in Public Subnet

To host a static website, a Linux Virtual Machine (Ubuntu) was deployed in `public-subnet-1`. The VM was configured using a custom cloud-init script (`custom_data`) that automatically installs and starts Apache.

**Key Configurations:**
- 🔐 SSH key generated via `tls_private_key`
- 🖥️ VM image: Ubuntu Server 18.04-LTS
- 🌐 Apache installed and started on boot
- 🔒 NSG (`nsg-web`) allows ports 22 (SSH) and 80 (HTTP)
- 🌍 Public IP assigned for external web access

📸 VM Overview with Public IP  
![VM Public Overview](screenshots/vm-public-overview.png)

📸 Apache Web Server Default Page  
![Apache Default Page](screenshots/apache-default-page.png)

### 6. Private Linux VM – No Public Access

A second Ubuntu Linux Virtual Machine was deployed in the **private-subnet-1** without a public IP. This VM uses the NAT Gateway for outbound internet access, ensuring:

- **No direct inbound access from the internet**
- **Secure and controlled environment**
- Apache web server installed via cloud-init

**Terraform Git Bash Output**

![Terraform Output](screenshots/private-vm-created-gitbash.png)

**Azure Portal – VM Networking Tab**

![Private VM Networking](screenshots/private-vm-no-public-ip.png)
