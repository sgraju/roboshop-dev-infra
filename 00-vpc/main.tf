module "vpc" {
    source="git::https://github.com/sgraju/terraform-aws-vpc.git"
    # VPC
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags
    
    # Public subnets
    public_subnet_cidrs = var.public_subnet_cidrs
    
    # Private subnets
    private_subnet_cidrs = var.private_subnet_cidrs
    
    # database subnets
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = true
}
