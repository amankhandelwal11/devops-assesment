

provider "aws" {
}

module "ecs-cluster" {
      source  = "./modules/ecs_cluster/"
      name    = "ecs"
  }

module "ecs-fargate-service" {
    source       = "./modules/ecs_fargate_service/"
    name-preffix = "ecs"
    ecs-cluster-arn = module.ecs-cluster.ecs-cluster-arn
    task-definition-arn = module.ecs-fargate-task-definition.ecs-task-definition-arn
    desired-count = 1 
    security-groups-id = ["sg-0ab8d262c31139124"]
    public-subnets = ["subnet-9d08f5bc"]
    assign-public-ip = true
}

module "ecs-fargate-task-definition" {
  source       = "./modules/ecs_fargate_task_definition/"
}

