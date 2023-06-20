dev:
	@rm -rf .terraform
	@terraform init
	@terraform apply -auto-approve -var-file=env-dev/main.tfvarsdev

prod:
	@rm -rf .terraform
	@terraform init
	@terraform apply -auto-approve -var-file=env-prod/main.tfvars