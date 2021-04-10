# Terraform run Web Server with Green/Blue deployment

First, you need to install terraform on your machine: https://www.terraform.io/downloads.html and make terraform command executable from any directory

Simply clone the repository:

```sh
git clone https://github.com/bohdan-krupa/terraform-learn
cd terraform-learn/
```

After that you need to set the AWS credentials:
```sh
export AWS_ACCESS_KEY_ID="an-access-key"
export AWS_SECRET_ACCESS_KEY="a-secret-key"
```
or you can use following command if you have installed AWS CLI:
```sh
aws configure
```

Next you should run
```sh
terraform init
```
for terraform initializing

Now you can run the following commands:
---
```sh
terraform plan
```
```sh
terraform plan -var-file="dev.tfvars"
```
```sh
terraform plan -var-file="prod.tfvars"
```
to see what terraform going to do with AWS

```sh
terraform apply
```
```sh
terraform apply -var-file="dev.tfvars"
```
```sh
terraform apply -var-file="prod.tfvars"
```
to see what terraform going to do with AWS and perform that

```sh
terraform destroy
```
```sh
terraform destroy -var-file="dev.tfvars"
```
```sh
terraform destroy -var-file="prod.tfvars"
```
to destroy all resources that was started by terraform