

variable "name-preffix" {
  description = "ARN of an ECS cluster"
}

variable "ecs-cluster-arn" {
  description = "ARN of an ECS cluster"
}


variable "task-definition-arn" {
  description = "(Required) The full ARN of the task definition that you want to run in your service."
}

variable "desired-count" {
  description = "(Optional) The number of instances of the task definition to place and keep running. Defaults to 0."
  type        = number
  default     = 1
}


# ---------------------------------------------------------------------------------------------------------------------
# AWS ECS SERVICE network_configuration BLOCK
# ---------------------------------------------------------------------------------------------------------------------
variable "public-subnets" {
  description = "The public subnets associated with the task or service."
  type        = list
}

variable "security-groups-id" {
  description = "(Optional) The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used."
  type        = list
  default     = []
}

variable "assign-public-ip" {
  description = "(Optional) Assign a public IP address to the ENI (Fargate launch type only). If true service will be associated with public subnets. Default false. "
  type        = bool
  default     = false
}
