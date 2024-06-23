#READY  
module "vpc" {
  source = "./aws-modules/vpc"
  # Subnet public x 3 (a,b,c) 
  # subnet private n+1 up to 3 (a,b,c)
  # deploys internet gateway on public subnet
  region  = var.region
  cidrs   = var.cidrs
  subnets = var.subnets

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