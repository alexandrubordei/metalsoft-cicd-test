# MetalSoft CI/CD example using github actions

Example Terraform MetalSoft manifest that can be used as part of a CI/CD pipeline. This setup is configured to automatically push changes onto a demo environment.

To test the automation:
1. Clone the repository locally:
```
git clone git@github.com:alexandrubordei/metalsoft-cicd-test.git
```
2. Edit the infrastructure blueprint, for example add another cluster such as `server3` in `example.tf`. Don't forget to add a dependency in the `infrastructure_deployer` resource to point to the newly created server.
3. Commit & push the change
```
git add .
git commit -m "Added server3 as requested by management"
git push origin main
```
4. Go to the infrastructure editor and see the changes. Note that the infrastructure is created under my user.
> Note that to actually deploy change the 
`prevent_deploy` flag on the `infrastructure_deployer` to `false`

## To test locally

Configure the following env variables. Note that the server type and volume types are also environment dependent.
```

export TF_VAR_user_email=
export TF_VAR_api_key=
export TF_VAR_endpoint=
export TF_VAR_datacenter=

terraform init
terraform plan
```

## To apply
> Note that there is an entry in the example.tf file called `prevent_deploy = true`. It must be set to false to allow actual deploy. Without it the infrastructure will be created with all the elements but `terraform apply` will not actually deploy. 

```
terraform apply
```


