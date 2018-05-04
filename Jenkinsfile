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
      }
    }
    stage('Sleep') {
      steps {
        sh '''set -x
env
bash ./jenkins/scripts/create-reverse.sh demo.test 35000
nohup node /poc/main.js &
'''
        input 'Stop container ?'
      }
    }
    stage('Remove proxy') {
      steps {
        sh 'bash ./jenkins/scripts/remove-reverse.sh demo.test'
      }
    }
  }
}