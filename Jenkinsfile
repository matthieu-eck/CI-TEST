pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Build') {
      steps {
        echo 'Building Container'
        build 'get-crendentials'
      }
    }
    stage('Sleep') {
      steps {
        sh '''set -x
env

bash ./jenkins/scripts/create-reverse.sh $BUILD_TAG.demo $secret
nohup node /poc/main.js &
'''
        input 'Stop container ?'
      }
    }
    stage('Remove proxy') {
      steps {
        sh 'bash ./jenkins/scripts/remove-reverse.sh demo.$BUILD_TAG'
      }
    }
  }
  environment {
    PORT = '35000'
  }
}