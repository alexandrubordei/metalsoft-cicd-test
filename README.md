#MetalSoft CI/CD example using github actions

Example terraform setup that can be used as part of a CI/CD pipeline.

## To test
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

