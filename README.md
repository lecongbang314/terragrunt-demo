# Terragrunt Demo

## Description
This project stimulates a infrastructure created by Terraform/Terragrunt. The infrastructure will include VPC, Subnet, EC2. 
## Structure
```
terragrunt-demo
├── live                    # This will contain the infrastructure running in environment (Single source of truth concept)
│   ├── terragrunt.hcl      # Root Terragrunt config (backend for all 3 environments)        
│   ├── test                # Infra for Test environment
|   │   └── terragrunt.hcl  
│   ├── uat                 # Infra for UAT environment
│   │   └── terragrunt.hcl
│   └── prod                # Infra for PROD environment
│       └── terragrunt.hcl
│
└── modules                 # Contain the reusable modules 
    └── simple-webserver
        ├── main.tf
        └── variables.tf
```
## Usage
```
cd live
terragrunt run-all apply
terragrunt run-all destroy
```
## License
Distributed under the MIT License. See [LICENSE](./LICENSE) for more information.


