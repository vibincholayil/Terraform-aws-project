# Terraform-aws-project
This is a Terraform project which explore terraform , aws Load balancer 
using AWS  Terraform 
using private subnet

I have used terraform documention form https://registry.terraform.io/ 

all prerequisite

Diagram

connected aws with seret key and access keys

Step1: create a provider.tf 
https://registry.terraform.io/providers/hashicorp/aws/latest/docs
i have tried terrraform init
![alt text](<images/first terraform apply.png>)

Step 2: Create VPC.tf
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

Step 3: create variable.tf
I have create a variable for cidr , subnet, avaiability zone

Step 4: create subnet from cidr


step 5: internet gateway
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway

Step 6: ctrate route table
to receive the access i need to create the route table. so it define where the trafiic go to. 


step 6: route table acassociation
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/main_route_table_association



Check implementation in terminal
terraform validate (check all cterraform code)
![alt text](<images/Screenshot 2025-05-16 at 10.53.59.png>)
terraform plan (for dry run)
![alt text](<images/Screenshot 2025-05-16 at 10.54.38.png>)
terraform apply (to apply terraform code)
ERROR came - Trobleshooting steps
![alt text](<images/Screenshot 2025-05-16 at 10.56.21.png>)
Error 1 solved:
route {
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}
Error 2 Solved:
insert availabily extention a (eu-west-2a, eu-west-2b)

successfully created now
![alt text](<images/Screenshot 2025-05-16 at 11.25.03.png>)

This is the resorce creted by terraform:
![alt text](<images/Screenshot 2025-05-16 at 11.40.11.png>)


Step7: create Security group
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group


Step 8: create s3 bukket

step 9: create ec2 instance
