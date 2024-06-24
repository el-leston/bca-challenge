#READY  
module "vpc" {
  source = "./aws-modules/vpc"

  region  = var.region
  cidrs   = var.cidrs
  subnets = var.subnets

}


/* module "s3_bucket"{
  source = "./aws-modules/s3"
  bucket_name = var.bucket_name
  log_bucket_name = var.log_bucket_name
} */

/* module "nat" {
  source = "./aws-modules/nat"
  vpc_id     = module.vpc.vpc_id
  depends_on = [module.vpc]
} */

/* #READY  
module "asg" {
  source = "./aws-modules/asg"
  region     = var.region
  cidrs      = var.cidrs
  subnet_ids = module.vpc.private_subnet_ids
  vpc_id     = module.vpc.vpc_id
  #asg_name   = var.asg_name

}





/* module "mq" {
  source = "./aws-modules/mqs"
} */

/* module "lambda_functions" {
  source = "./aws-modules/lambda"
  #broker_url = module.mq.mq_broker_url
} */

/* 
module "api_gateway" {
    source = "./aws-modules/api-gateway"
    #wlambda_name = var.wlambda_name
    #rlambda_name = var.rlambda_name

    #depends_on = [module.lambda_functions]
} */