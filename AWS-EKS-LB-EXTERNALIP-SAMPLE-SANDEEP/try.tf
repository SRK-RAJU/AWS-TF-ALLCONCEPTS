#module "eks" {
#  source  = "terraform-aws-modules/eks/aws"
#  version = "~> 18.0"
#
#  cluster_name    = "my-cluster"
#  cluster_version = "1.22"
#
#  cluster_endpoint_private_access = true
#  cluster_endpoint_public_access  = true
#
#  cluster_encryption_config = [
#    {
#      provider_key_arn = "arn:aws:kms:eu-west-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
#      resources        = ["secrets"]
#    }
#  ]
#
#  vpc_id     = "vpc-078a65ec215c92579"
#  subnet_ids = ["subnet-030df7dab2d6b949e", "subnet-010829c9635538dae", "subnet-0190523e034fc3be0"]
#
#
#  self_managed_node_groups = {
#    one = {
#      name         = "mixed-1"
#      max_size     = 5
#      desired_size = 2
#
#      use_mixed_instances_policy = true
#      mixed_instances_policy     = {
#        instances_distribution = {
#          on_demand_base_capacity                  = 0
#          on_demand_percentage_above_base_capacity = 10
#          spot_allocation_strategy                 = "capacity-optimized"
#        }
#
#
#      }
#    }
#  }
#}