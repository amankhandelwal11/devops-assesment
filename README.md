# Assessment

Below you will find 3 levels of assessments ranging from Jr. devOps engineer, devOps Engineer, and Sr. devOps Engineer roles, each one being more complex than the next. Please choose at least one level/optione to demonstrate your technical aptitude and knowledge of devOps toolsets.

## Level 1
This should take no longer than 45min to complete

### Scenario
* This assessment assumes as a Jr. devOps engineer you are expected to find online or build a simple website (can be 1 page with "Hello World") running behind nginx using the below tools.
* As a devOps engineer your process for this should be automated, with 1-click build/deploy or 2-clicks separating 1-click build and 1-click deploy.
* You will find all files in the Lvl1 folder

#### Tools
* [Ansible](./Lvl1/Ansible.md)
* [Terraform](./Lvl1/Terraform.md)
* [Docker](./Lvl1/Docker.md)

## Level 2
This should take no longer than 1hr to complete

### Scenario
* This assessment assumes as a devOps engineer you need to evaluate a legacy docker container, developed by a former employee which you don't have access to. In this exercise you must evaluate the docker container, ensure the application loads correctly.
* You must optimize it to be as compact as possible, minimally by using alpine linux.
* You will find all files in the Lvl2 folder

## Level 3
These options can take a hour to a few hours to complete depending on your technical aptitude

### Option 1
#### Scenario
* This assessment assumes as a Sr. devOps engineer you are expected to manage a Jenkins server.
* You need to build a Jenkins pipeline that pulls its configuration from another git repository that can be centrally managed by the whole devOps team.
* This pipeline should support running a Node.JS applications coverage tests and report back to a tool such as github the build status.
* This should all be written in IaC and CM code of your choice and placed in the Lvl3 folder under a folder called Option1. 
* Instructions for use and building this solution should be included in the Option1 folder as well.

### Option 2
#### Scenario
* This assessment assumes as a Sr. devOps engineer you are expected to be able to build and manage a ECS cluster in AWS.
* You need to build a ECS cluster in AWS using Terraform. 
* Using a CI/CD tool such a Jenkins or CodeBuild, build a CI/CD flow that will monitor your git repository for changes to a docker file, build and push the dockerfile to ECR and deploy it to ECS for testing.
* This should all be written in IaC and CM code of your choice and placed in the Lvl3 folder under a folder called Option1. 
* Instructions for use and building this solution should be included in the Option2 folder as well.

