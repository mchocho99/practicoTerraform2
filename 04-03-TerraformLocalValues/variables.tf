variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "Application Name"
  type        = string
}

variable "environment_name" {
  description = "Environment Name"
  type        = string
}