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
