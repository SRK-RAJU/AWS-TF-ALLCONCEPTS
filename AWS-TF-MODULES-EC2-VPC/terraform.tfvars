NAME          = "Wave-cycle"
CIDR          = "190.0.0.0/16"
AZ            = ["us-east-1a"]
SUBNET        = ["190.0.0.0/24"]
PVT-SUBNET    = ["190.0.1.0/24"]
spot_type     = "persistent"
spot_behavior = "stop"
ami           = "ami-002070d43b0a4f171"
instance_type = "t2.micro"


