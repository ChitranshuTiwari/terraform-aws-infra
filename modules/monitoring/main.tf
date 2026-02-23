# CloudWatch monitoring resources
# Placeholder for Prometheus/Grafana on EKS - would use Helm in practice

resource "aws_cloudwatch_log_group" "main" {
  count             = var.enabled ? 1 : 0
  name              = var.log_group_name
  retention_in_days  = var.log_retention_days
}

# Placeholder for CloudWatch alarms - configure when EC2/ECS resources exist
