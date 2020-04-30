

resource "aws_ecs_service" "service" {
  name                               = "${var.name-preffix}-service"
  cluster                            = var.ecs-cluster-arn
  task_definition                    = var.task-definition-arn
  launch_type                        = "FARGATE"
  desired_count                      = var.desired-count
  network_configuration {
    security_groups  = var.security-groups-id
    subnets          = var.public-subnets
    assign_public_ip = var.assign-public-ip
  }

}