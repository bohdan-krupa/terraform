# Terraform Run WebServers with bootstrapping

First, you need to install terraform on your machine: https://www.terraform.io/downloads.html and make terraform command executable from any directory

Simply clone the repository:

```sh
git clone https://github.com/bohdan-krupa/terraform-learn
cd terraform-learn/
```

After that you need to set the AWS environments:
```sh
export AWS_ACCESS_KEY_ID="an-access-key"
export AWS_SECRET_ACCESS_KEY="a-secret-key"
export AWS_DEFAULT_REGION="a-region"
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
to see what terraform going to do with AWS

```sh
terraform apply
```
to see what terraform going to do with AWS and perform that

```sh
terraform destroy
```
to destroy all resources that was started by terraform