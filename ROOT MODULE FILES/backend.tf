terraform {
  backend "s3" {
    bucket = "terraform-backend-state-bucket"
    key    = "modulesproject/terraform.tfstate"
    region = "ap-south-1"
  }
}
