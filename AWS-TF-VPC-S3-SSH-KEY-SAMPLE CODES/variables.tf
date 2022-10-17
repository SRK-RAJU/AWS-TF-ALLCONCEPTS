variable "ec2-type" {
  description = "Ec2 Instance Type"
  type=string
  default = "t2.micro"
}
#variable "key-pair" {
#  description = "keypair"
#  type = string
#  default= "zwaw"
#}

#variable key_name {
#  default = "zwaw"
#  type    = string
#}

variable "generated_key_name" {
  type        = string
  default     = "terraform-key-pair"
  description = "Key-pair generated by Terraform"
}

#variable "amis" {
#  type = map(string)
#}
variable "instance_type" {}
variable "autoscaling_group_min_size" {}
variable "autoscaling_group_max_size" {}


#variable "SecureVariableOne" {
#  type      = string
#  default   = ""
#  sensitive = true
#}
variable "ServerName" {
  type    = string
  default = "app-server-pub"
}
#variable "region" {}