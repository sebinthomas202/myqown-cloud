# MyQown Cloud

This project contains the setup and configuration scripts for deploying Nextcloud on an AWS EC2 instance.

## Prerequisites

- **AWS Account**: Sign up for an AWS account if you don't have one already.
- **Basic Knowledge**: Familiarity with AWS EC2 and Linux.

## Setup Instructions

1. **Launch an EC2 Instance**
   - Log in to your AWS Management Console.
   - Navigate to the EC2 service and select the region closest to you.
   - Launch a new EC2 instance with your preferred Linux distribution (e.g., Ubuntu).
   - Ensure HTTP, HTTPS, and SSH are enabled in your security group settings.

2. **Connect to Your Instance**
   - Obtain the public IP address or public DNS of your EC2 instance.
   - SSH into your instance using:
     ```bash
     ssh -i <path_to_key_pair_file> <username>@<public_ip_or_dns>
     ```

3. **Install Nextcloud**
   - Update your instance:
     ```bash
     sudo apt update && sudo apt upgrade -y
     ```
   - Install `snapd` and Nextcloud:
     ```bash
     sudo apt install snapd -y
     sudo snap install nextcloud
     ```

4. **Configure Nextcloud**
   - Set up Nextcloud with your desired username and password:
     ```bash
     sudo nextcloud.manual-install <username> <password>
     ```
   - Add trusted domains:
     ```bash
     sudo nextcloud.occ config:system:set trusted_domains 0 --value=<your-ec2-public-ip>
     sudo nextcloud.occ config:system:set trusted_domains 1 --value=<your-domain>
     ```

## Additional Resources

- [Nextcloud Documentation](https://docs.nextcloud.com/)
- [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/index.html)
