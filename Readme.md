## AWS EC2 auto deployment with terraform

### Dependencies
- [terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Configuration
#### AWS Credentials
Create a *.tfvars file (for instance aws_keys.tfvars) and enter your aws credentials.
```
aws_access_key = "YOUR_ACCESS_KEY"
aws_secret_key = "YOUR_SECRET_KEY"
```
#### SSH Keypair
Generate a SSH pem key for EC2 cluster login. Rename it to Keypair-01.pem or enter the SSH certificate file to your *.tfvars file.
```
ssh_private_key = "PATH_TO_SSH_PRIVATE_KEY"
```

### How to run
1. Run ```terraform init``` to  initialize terraform.
2. Run ```terraform apply --var-file=YOUR_VAR_FILE.tfvars``` to deploy clusters.
3. Run ```terraform destroy --var-file=YOUR_VAR_FILE.tfvars``` to destroy clusters.