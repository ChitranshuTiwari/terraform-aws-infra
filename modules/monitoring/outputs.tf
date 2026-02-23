output "log_group_name" {
  description = "CloudWatch log group name"
  value       = var.enabled ? aws_cloudwatch_log_group.main[0].name : null
}
