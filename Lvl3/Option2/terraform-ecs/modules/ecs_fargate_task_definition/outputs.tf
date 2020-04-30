output "ecs-task-definition-arn" {
  description = "Full ARN of the Task Definition (including both family and revision)."
  value       = aws_ecs_task_definition.td.arn
}

output "ecs-task-definition-family" {
  description = "The family of the Task Definition."
  value       = aws_ecs_task_definition.td.family
}

output "ecs-task-definition-revision" {
  description = "The revision of the task in a particular family."
  value       = aws_ecs_task_definition.td.revision
}