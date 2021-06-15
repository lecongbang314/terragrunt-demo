terraform {
  source = "../../modules/simple-webserver"
}

dependencies {
  paths = ["../test", "../uat"]
}

include {
  path = find_in_parent_folders()
}

inputs = {
  aws_vpc_cidr      = "172.16.0.0/16"
  aws_subnet_cidr   = "172.16.12.0/24"
  aws_instance_type = "t2.medium"
}