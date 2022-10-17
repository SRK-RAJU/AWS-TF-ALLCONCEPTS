###Create an AWS CloudWatch metric alarm
#
#resource "aws_cloudwatch_metric_alarm" "EC2_CPU_Usage_Alarm" {
#  alarm_name                = "EC2_CPU_Usage_Alarm"
#  comparison_operator       = "GreaterThanOrEqualToThreshold"
#  evaluation_periods        = "2"
#  metric_name               = "CPUUtilization"
#  namespace                 = "AWS/EC2"
#  period                    = "60"
#  statistic                 = "Average"
#  threshold                 = "70"
#  alarm_description         = "This metric monitors ec2 cpu utilization exceeding 70%"
#}
#
#
####Create an AWS CloudWatch metric alarm module concept then we have to un hide all
##module "metric_alarm" {
##  source  = "terraform-aws-modules/cloudwatch/aws//modules/metric-alarm"
##  version = "~> 2.0"
##
##  alarm_name          = "EC2_CPU_Usage"
##  comparison_operator = "GreaterThanOrEqualToThreshold"
##  evaluation_periods  = 2
##  threshold           = 70
##  period              = 60
##  unit                = "Count"
##
##  namespace   = "AWS/EC2"
##  metric_name = "CPUUtilization"
##  statistic   = "Average"
##
##  alarm_actions = ["arn:aws:sns:us-east-2:585584209241:cpu_utilization"]
##}
#
#####Create an AWS CloudWatch metric alarm with EC2 Autoscaling
#
#
