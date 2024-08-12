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