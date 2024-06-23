#### VPC ####
cidrs = {
  primary   = "172.20.0.0/25"
  secondary = ["172.20.0.128/25"]
}
subnets = {
  public_subnet_1 = {
    availability_zones = ["a"]
    cidr_block         = "172.20.0.0/25"
    IsPrivate          = false
    Isroutable         = true
    subnetName         = "public-subnet-a"
  },
  private_subnet_1 = {
    availability_zones = ["b"]
    cidr_block         = "172.20.0.128/26"
    IsPrivate          = true
    Isroutable         = true
    subnetName         = "private-subnet-b-1"
  },
  private_subnet_2 = {
    availability_zones = ["b"]
    cidr_block         = "172.20.0.192/26"
    IsPrivate          = true
    Isroutable         = true
    subnetName         = "private-subnet-b-2"
  }

}

#### ASG ####
asg_name = "el-autoscaling-group"



#### S3 ####
bucket_name     = "bca-assets-bucket"
log_bucket_name = "bca-logging-bucket"