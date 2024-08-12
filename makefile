#Deploy to the development environment
deploy-dev:
	echo "Deploying to development environment..."
	cd dev && terraform init && terraform plan && terraform apply -auto-approve

# Deploy to the staging environment
deploy-stage:
	echo "Deploying to staging environment..."
	cd stage && terraform init && terraform plan && terraform apply -auto-approve

# Deploy to the production environment
deploy-prod:
	echo "Deploying to production environment..."
	cd prod && terraform init && terraform plan && terraform apply -auto-approve

# Deploy all environments
deploy-all: deploy-dev deploy-stage deploy-prod

# destroy dev environment
destroy-dev:
	echo "Destroying development environment..."
	cd dev && terraform init && terraform plan && terraform destroy -auto-approve

# Destroy staging environment
destroy-stage:
	echo "Destroying staging environment..."
	cd stage && terraform init && terraform plan && terraform destroy -auto-approve

# Destroy production environment
destroy-prod:
	echo "Destroying production environment..."
	cd prod && terraform init && terraform plan && terraform destroy -auto-approve
# Destroy all environments
destroy-all: destroy-dev destroy-stage destroy-prod

