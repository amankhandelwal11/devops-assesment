#!groovy

def setBuildStatus(String message, String state) {
  step([
      $class: "GitHubCommitStatusSetter",
      reposSource: [$class: "ManuallyEnteredRepositorySource", url: "https://github.com/rv91/devops-assesment"],
      contextSource: [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/build-status"],
      errorHandlers: [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
      statusResultSource: [ $class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: message, state: state]] ]
  ]);
}

pipeline {
  agent any

  parameters {
    choice(name: 'BUILD', choices: 'release\nsnapshot\n', description: 'Specify whether it is release or snapshot build.')
    choice(name: 'Project', choices: ['Project-1', 'Project-2'], description: 'Select the Project')
    string(name: 'UserName', defaultValue: 'venkat', description: 'Specify the git username.')
    string(name: 'Version', defaultValue: '1.0.0-SNAPSHOT', description: 'Specify the version.')
    password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Pasword')
    booleanParam(name: 'Deploy', defaultValue: false, description: 'Deploy or not')
    text(name: 'DEPLOY_Servers', defaultValue: 'One\nTwo\nThree\n', description: '')
  }

  stages {

    stage('Checkout SCM') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/Lvl3']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/rv91/devops-assesment.git']]])
      }
    }

    stage('Test') {
      steps {
        sh '''#!/bin/bash
          cd /var/lib/jenkins/workspace/nodejs-pipeline/Lvl3/Option1/NodeJsProj
          npm install
          npm test
          npm run cover
        '''
      }
    }
  }
  post {
    success {
        setBuildStatus("Build succeeded", "SUCCESS");
    }
    failure {
        setBuildStatus("Build failed", "FAILURE");
    }
  }
}


