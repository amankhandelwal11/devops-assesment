# ---------------------------------------------------------------------------------------------------------------------
# AWS ECS SERVICE
# ---------------------------------------------------------------------------------------------------------------------
output "ecs-service-id" {
  description = "The Amazon Resource Name (ARN) that identifies the service."
  value       = aws_ecs_service.service.id
}

output "ecs-service-name" {
  description = "The name of the service."
  value       = aws_ecs_service.service.name
}

output "ecs-service-cluster" {
  description = "The Amazon Resource Name (ARN) of cluster which the service runs on."
  value       = aws_ecs_service.service.cluster
}

output "ecs-service-desired-count" {
  description = "The number of instances of the task definition"
  value       = aws_ecs_service.service.desired_count
}