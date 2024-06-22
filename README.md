
# command to skip admin_username and admin_password while destroying resources
terraform destroy -var="admin_username=null" -var="admin_password=null"


#################################################################
# terraform workspaces instructions

terraform init

terraform workspace new prod
terraform workspace new int
terraform workspace new dev

terraform workspace list

terraform workspace select prod
terraform apply -var-file prod.tfvars

terraform workspace select int
terraform apply -var-file int.tfvars

terraform workspace select dev
terraform apply -var-file dev.tfvars


terraform workspace select prod
terraform apply -var-file prod.tfvars

terraform workspace select int
terraform apply -var-file int.tfvars

terraform workspace select dev
terraform apply -var-file dev.tfvars
#########################################################################
