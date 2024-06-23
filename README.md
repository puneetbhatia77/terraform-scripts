
# command to skip admin_username and admin_password while destroying resources
terraform destroy -var="admin_username=null" -var="admin_password=null"


#################################################################
# terraform workspaces instructions

## run terraform init
  terraform init

## create terraform workspaces
  terraform workspace new prod
  terraform workspace new int
  terraform workspace new dev

## list terraform workspaces
  terraform workspace list

## select terraform workspace for prod env and run terraform apply
  terraform workspace select prod
  
  terraform apply -var-file prod.tfvars
  
## select terraform workspace for int env and run terraform apply
  terraform workspace select int
  
  terraform apply -var-file int.tfvars
  
## select terraform workspace for dev env and run terraform apply
  terraform workspace select dev
  
  terraform apply -var-file dev.tfvars
  
## select terraform workspace for prod env and run terraform destroy
  terraform workspace select prod
  
  terraform apply -var-file prod.tfvars

## select terraform workspace for int env and run terraform destroy
  terraform workspace select int
  
  terraform apply -var-file int.tfvars

## select terraform workspace for dev env and run terraform destroy
  terraform workspace select dev
  
  terraform apply -var-file dev.tfvars
