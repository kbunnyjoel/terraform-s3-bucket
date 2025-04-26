# Terraform S3 Bucket Deployment

This project contains Terraform configuration files to deploy an S3 bucket in the `us-east-1` region.

## Project Structure

- `main.tf`: Contains the main configuration for the S3 bucket resource.
- `variables.tf`: Defines input variables for the S3 bucket configuration.
- `outputs.tf`: Specifies output values after the S3 bucket is created.
- `provider.tf`: Configures the AWS provider and sets the region.

## Getting Started

### Prerequisites

- Terraform installed on your machine.
- AWS account with appropriate permissions to create S3 buckets.

### Instructions

1. **Clone the repository**:
   ```
   git clone <repository-url>
   cd terraform-s3-bucket
   ```

2. **Initialize Terraform**:
   Run the following command to initialize the Terraform configuration:
   ```
   terraform init
   ```

3. **Plan the deployment**:
   To see what resources will be created, run:
   ```
   terraform plan
   ```

4. **Apply the configuration**:
   To create the S3 bucket, run:
   ```
   terraform apply
   ```

   Confirm the action when prompted.

5. **View Outputs**:
   After the apply completes, you can view the output values (like the bucket name and ARN) by running:
   ```
   terraform output
   ```

### Cleanup

To remove the S3 bucket and all associated resources, run:
```
terraform destroy
```

### Notes

- Ensure that the bucket name is unique across all existing S3 buckets in AWS.
- Modify the `variables.tf` file to customize the bucket name and other settings as needed.