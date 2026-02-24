module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  availability_zone   = "ap-south-1a"
}

module "ec2" {
  source        = "./modules/ec2-instances"
  subnet_id     = module.vpc.subnet_id
  vpc_id        = module.vpc.vpc_id
  instance_type = var.instance_type
  key_name      = var.key_name
}

module "s3" {
  source      = "./modules/s3-bucket"
  bucket_name = "terraform-module-bucket-123456"
}
