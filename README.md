# Mini-Project

modulesproject/
│── main.tf
│── provider.tf
│── variables.tf
│── terraform.tfvars
│── outputs.tf
│── backend.tf
│
└── modules/
    ├── vpc/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    ├── ec2-instances/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    └── s3-bucket/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
