# Terraform-Build-highly-available-infrastructure
Build a highly available infrastructure in Azure using Terraform, featuring VNet, subnets, NAT gateway, NSGs, and Linux VMs.

This project provisions a highly available Azure infrastructure using Terraform.
The aim was to create a reliable, scalable, and redundant environment to host a static web application.

It includes:

A Virtual Network (VNet) with multiple subnets across availability zones

A NAT gateway for secure outbound internet access

Network Security Groups (NSGs) for inbound/outbound rules

Virtual Machines (Ubuntu Linux) deployed in public subnets

Apache server installed on VMs to serve static website content

The infrastructure is fully defined in code using Terraform, allowing consistent deployment and easy teardown.

