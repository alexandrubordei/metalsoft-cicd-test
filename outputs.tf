data "metalcloud_infrastructure_output" "output1" {
    infrastructure_id = metalcloud_infrastructure_deployer.infrastructure_deployer.infrastructure_id
    depends_on = [
      metalcloud_infrastructure_deployer.infrastructure_deployer
    ]
}

output "deployer_drives_output_data_source" { 
    value = data.metalcloud_infrastructure_output.output1
}