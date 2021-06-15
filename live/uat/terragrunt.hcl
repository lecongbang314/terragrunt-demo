# Define the module to use
terraform {
  source = "../../modules/simple-webserver"
}

# Need the Test environment to deploy successfully first
dependencies {
  paths = ["../test"]
}

# Inherit backend config from root 
include {
  path = find_in_parent_folders()
}

# Input for module
inputs = {
  aws_vpc_cidr      = "172.16.0.0/16"
  aws_subnet_cidr   = "172.16.11.0/24"
  aws_instance_type = "t2.small"
}