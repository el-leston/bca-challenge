#READY  
module "vpc" {
  source = "./aws-modules/vpc"

  region  = var.region
  cidrs   = var.cidrs
  subnets = var.subnets

}
 #READY  
module "asg" {
  source = "./aws-modules/asg"
  region     = var.region
  vpc_id     = module.vpc.vpc_id
  #asg_name   = var.asg_name (optional)
  asg_sg     = module.vpc.default_sg_id
  arn_instance_profile  = "arn:aws:iam::811931148196:instance-profile/SSM" 

  depends_on = [module.vpc]

}

module "lambda_functions" {
  source = "./aws-modules/lambda"
  broker_url = module.mq.mq_broker_url # replace with "" to avoid deploying with mq url
}


module "api_gateway" {
    source = "./aws-modules/api-gateway"
    wlambda_name       = module.lambda_functions.wlambda_name
    rlambda_name       = module.lambda_functions.rlambda_name
    wlambda_invoke_arn = module.lambda_functions.wlambda_invoke_arn
    rlambda_invoke_arn = module.lambda_functions.rlambda_invoke_arn

    depends_on = [module.lambda_functions]
}


module "s3_bucket"{
  source = "./aws-modules/s3"
  bucket_name = var.bucket_name
  log_bucket_name = var.log_bucket_name
} 

module "nat" {
  source = "./aws-modules/nat"
  vpc_id     = module.vpc.vpc_id
  depends_on = [module.vpc]
} 
 

 module "mq" {
  source          = "./aws-modules/mq"
  mq_sg           = module.vpc.default_sg_id
  private_subnets = module.vpc.private_subnet_ids
  } 





