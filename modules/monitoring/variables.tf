variable "project_name" {
  description = "Project name"
  type        = string
}

variable "log_group_name" {
  description = "CloudWatch log group name"
  type        = string
}

variable "log_retention_days" {
  description = "Log retention in days"
  type        = number
  default     = 14
}

variable "enabled" {
  description = "Enable monitoring resources"
  type        = bool
  default     = true
}
