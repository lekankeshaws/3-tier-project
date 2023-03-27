## list workspaces
```
terraform workspace list
```

## Create workspace
```
terraform workspace new sbx
terraform workspace new prod
terraform workspace new dev
```
## show specific workspace
```
terraform workspace show
```
## Next creating tfvars file
```
touch sbx.tfvars dev.tfvars prod.tfvars
```
## How to tag in workspace
```
you use this command "${terraform.workspace}-kesh-vpc" and if you want to add a upper case do upper("${terraform.workspace}-kesh-vpc")
```
## To switch to another workspace
```
terraform workspace select <name of workspace>
```
## How do we run terraform plan in this new approach
## first step verify the workspace
```
terraform worspace show
```
## Then run the command
```
terraform plan -var-file prod.tfvars
```
## Unlock state file
```
terraform foce-unlock <copy the id specified>
```
## How to Destroy
```
terraform workspace select prod
terraform destroy -var-file prod.tfvars
```

# terraform commands
- terraform init
- terraform plan
- terraform validate
- terraform apply
- terraform destroy
- terraform refresh
- terraform console
- terraform fmt --recursive
- terraform output
- terraform show -json tf.plan > tf.plan.json
- terraform state list
- terraform state rm
- terraform init reconfigure (used to move state file, when backend has been changed)
