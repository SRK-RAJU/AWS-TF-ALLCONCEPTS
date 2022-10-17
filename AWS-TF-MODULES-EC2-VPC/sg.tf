module "sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = var.NAME
  description = "Security group for user-service with custom ports open within VPC, and PostgreSQL publicly open"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks      = ["190.0.0.0/16"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "tcp"
      description = ""
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}