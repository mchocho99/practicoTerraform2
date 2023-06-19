variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

# variable "ec2_ami_id" {
#   description = "AMI ID"
#   type        = string
#   default     = "ami-0915bcb5fa77e4892"
#   validation {
#     condition     = length(var.ec2_ami_id) > 4 && substr(var.ec2_ami_id, 0, 4) == "ami-"
#     error_message = "The ec2_ami_id value must be a valid AMI id, starting with \"ami-\"."
#   }
# }

# variable "ec2_instance_count" {
#   description = "EC2 Instance Count"
#   type        = number
#   default     = 2
# }

# variable "ec2_instance_type" {
#   description = "EC2 Instance Type"
#   type        = string
#   default     = "t3.micro"
# }

variable "db_username" {
  description = "AWS RDS Database Administrator Username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "AWS RDS Database Administrator Password"
  type        = string
  sensitive   = true
}

# variable "ec2_instance_type" {
#   description = "EC2 Instance Type"
#   type        = list(string)
#   default     = ["t3.micro", "t3.small", "t3.large"]
# }

# variable "ec2_instance_tags" {
#   description = "EC2 Instance Tags"
#   type        = map(string)
#   default = {
#     "Name" = "ec2-web"
#     "Tier" = "Web"
#   }
# }

# variable "ec2_instance_type_map" {
#   description = "EC2 Instance Type"
#   type        = map(string)
#   default = {
#     "small-apps"  = "t3.micro"
#     "medium-apps" = "t3.medium"
#     "big-apps"    = "t3.large"
#   }
# }