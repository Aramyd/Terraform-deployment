#!/bin/bash
echo "initializing terraform"
terraform init 
terraform plan
terraform apply --auto-approve
echo "successful"
