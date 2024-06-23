#READY  
module "vpc" {
  source = "./aws-modules/vpc"

  region  = var.region
  cidrs   = var.cidrs
  subnets = var.subnets

}

module "nat" {
  source = "./aws-modules/nat"
  vpc_id     = module.vpc.vpc_id
  depends_on = [module.vpc]
} 
/* #READY  
module "asg" {
  source = "./aws-modules/asg"
  #ASG scales towards n+1 private subnetes
  region     = var.region
  cidrs      = var.cidrs
  subnet_ids = module.vpc.private_subnet_ids
  vpc_id     = module.vpc.vpc_id
  asg_name   = var.asg_name
  
  depends_on = [module.vpc]

}

module "lambda_functions" {

}

module "s3_bucket"{

}

module "MQ" {

}

module "api gateway" {

} */